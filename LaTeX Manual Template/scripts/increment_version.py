#!/bin/python3

import re
import os
import sys


def increment_version(version_str):
    """
    Increment the minor part of a version string like '0.001'.

    Args:
        version_str (str): The current version string.

    Returns:
        str: The incremented version string (e.g., '0.002').
    """
    major, minor = version_str.split('.')
    new_minor = f"{int(minor) + 1:03d}"
    return f"{major}.{new_minor}"


def update_latex_version(filename):
    """
    Update the version number in a LaTeX file by incrementing it.

    Args:
        filename (str): Path to the LaTeX file.

    Returns:
        str: The new version string (e.g., '0.008').
    """
    with open(filename, 'r') as file:
        content = file.read()

    pattern = r'(\\newcommand{\\Version}{)(\d+\.\d+)(})'
    match = re.search(pattern, content)

    if match:
        old_version = match.group(2)
        new_version = increment_version(old_version)
        new_content = re.sub(pattern, rf'\g<1>{new_version}\g<3>', content)

        with open(filename, 'w') as file:
            file.write(new_content)
        print(f"LaTeX version updated: {old_version} -> {new_version}")
        return new_version
    else:
        print("Version line not found in LaTeX file.")
        sys.exit(1)


# --- Execution ---

script_dir = os.path.dirname(os.path.abspath(__file__))
latex_path = os.path.abspath(os.path.join(script_dir, '..', 'TeX_files/settings.tex'))

update_latex_version(latex_path)
