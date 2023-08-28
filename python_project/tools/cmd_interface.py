
# Define some colors for fancy output.
colors = {
    'black': '\033[30m',
    'red': '\033[31m',      # ERROR text.
    'green': '\033[32m',    # SUCCESS text.
    'yellow': '\033[33m',   # WARNING text.
    'blue': '\033[34m',     # NOTE text.
    'magenta': '\033[35m',  # PROGRAM text
    'cyan': '\033[36m',     # OTHER text
    'white': '\033[37m',    # NORMAL text.
    'reset': '\033[0m',
    'none': ''
}

def output_text(message, type=None, color=None):
    """
    Print a message with colored text to the console. Color will override type if one of the other is specified.

    Args:
        message (str): The text message to be displayed.
        type (str, optional): The message type. Available types are:
          'text', 'normal', 'error', 'success', 'warning', 'note', 'program', 'other'.
        color (str, optional): The color name to apply to the message. Available color names are:
          'black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white'
    
    Example:
        colored_output("This is a regular message")
        colored_output("This is an error message", type="error")
        colored_output("This is a success message", type="success")
        colored_output("This is a warning message", type="warning")
    """

    if color is None and type is not None:
        type = type.lower()
        if type == 'error':
            color = 'red'
        elif type == 'success':
            color = 'green'
        elif type == 'warning':
            color = 'yellow'
        elif type == 'note':
            color = 'blue'
        elif type == 'program':
            color = 'magenta'
        elif type == 'other':
            color = 'cyan'
        elif type == 'text' or type == 'normal':
            color = 'white'
        else:
            print(f"{colors['red']}ERROR: Invalid type ({type}) specified.{colors['reset']}")
            color = 'white'
    elif color is None and type is None:
        color = 'white'

    if color not in colors:
        print(f"{colors['red']}ERROR: Invalid color ({color}) specified.{colors['reset']}")
        return
    
    formatted_message = f"{colors[color]}{message}{colors['reset']}"
    print(formatted_message)
    print(formatted_message)
