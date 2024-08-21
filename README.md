# Romanian subtitle corrector

This batch script allows you to convert `.srt` subtitle files from ANSI to UTF-8 encoding and replaces specific characters within the file. The script will list all `.srt` files in the directory, allow you to select one by number, and then perform the conversion and replacement.

## Features

- Lists all `.srt` files in the directory with a numbered selection.
- Converts the selected `.srt` file from ANSI to UTF-8 encoding.
- Replaces specific characters in the `.srt` file:
  - `º` is replaced with `ș`
  - `ã` is replaced with `ă`
  - `þ` is replaced with `ț`

## Prerequisites

- Windows OS (since it's a batch file).
- PowerShell (included with Windows by default).

## Installation

1. Clone this repository or download the `convert_srt.bat` file.
2. Place `convert_srt.bat` in the same directory as your `.srt` files.

## Usage

1. Open the directory containing `convert_srt.bat` and your `.srt` files.
2. Double-click `convert_srt.bat` or run it from the command line:
   ```cmd
   convert_srt.bat

Pro tip: use subs.ro then pass the subtitles from there through here, then remame and place into your subtitles folder
