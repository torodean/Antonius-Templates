#!/usr/bin/env python3
import unittest
import cmd_interface

class TestOutputText(unittest.TestCase):

    def test_default_color(self):
        # Test default behavior with no type or color specified
        # Should use 'white' color for normal text
        expected_output = '\033[37mThis is a normal message\033[0m\n'
        captured_output = self._capture_output(lambda: cmd_interface.output_text("This is a normal message"))
        self.assertEqual(captured_output, expected_output)

    def test_custom_color(self):
        # Test specifying a custom color
        expected_output = '\033[34mThis is a blue message\033[0m\n'
        captured_output = self._capture_output(lambda: cmd_interface.output_text("This is a blue message", color="blue"))
        self.assertEqual(captured_output, expected_output)

    def test_type_mapping(self):
        # Test type to color mapping
        expected_output = '\033[31mThis is an error message\033[0m\n'
        captured_output = self._capture_output(lambda: cmd_interface.output_text("This is an error message", type="error"))
        self.assertEqual(captured_output, expected_output)

    def _capture_output(self, function):
        from io import StringIO
        import sys

        captured_output = StringIO()
        sys.stdout = captured_output

        function()

        sys.stdout = sys.__stdout__  # Reset stdout
        return captured_output.getvalue()

if __name__ == '__main__':
    unittest.main()
