# Keep-Awake PowerShell Script

A PowerShell script that runs for a specified duration (default is 30 minutes), continuously displaying a live countdown while keeping your computer awake by sending periodic Scroll Lock keystrokes.

## Description

This script is designed to prevent your computer from going to sleep during critical operations or long-running tasks. It does so by:

- **Running for a user-defined duration:** Defaults to 30 minutes unless a different time is specified.
- **Displaying a live countdown timer:** Shows the remaining time in hours, minutes, and seconds.
- **Simulating activity:** Sends the Scroll Lock keystroke at random intervals (between 5 and 60 seconds) to prevent the system from entering sleep mode.
- **Handling interruptions gracefully:** If you press Ctrl+C or otherwise interrupt the script, it resets the console state before exiting.

## Usage

1. Open PowerShell.
2. Run the script with an optional time parameter (`-t`), which sets the duration in minutes:
   ```powershell
   .\KeepAwake.ps1 -t 45
   ```

## License
This project is released under the Unlicense.

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For more details, please visit [https://unlicense.org/](https://unlicense.org/).

## Contributing
Contributions, issues, and feature requests are welcome. If you have suggestions or improvements, please feel free to fork the repository and submit a pull request.

## Disclaimer
This script is provided as-is. Use it at your own risk; the author is not responsible for any damages or unintended consequences resulting from its use.
