# Online ADB Installer

![GitHub](https://img.shields.io/github/license/celalizolu/online-adb-installer)

## Overview

Online ADB Installer is a Windows batch script that simplifies the process of installing the latest version of ADB and Fastboot on your computer, and the necessary USB drivers for your Android device. The script downloads the required packages from the official Google repository and installs them with elevated privileges.

ADB (Android Debug Bridge) and Fastboot are command-line tools that allow you to interact with your Android device from a computer. They are useful for tasks such as installing apps, debugging, and unlocking the bootloader. However, installing ADB and Fastboot can be a bit complicated, especially if you are not familiar with command-line tools. Additionally, installing the necessary USB drivers for your Android device can be a hassle.

Online ADB Installer simplifies the process by automating the installation process. The script downloads the latest version of ADB and Fastboot from the official Google repository and installs them on your computer. Additionally, the script downloads the necessary USB drivers for your Android device and installs them with elevated privileges.

## Features

- Installs the latest version of ADB and Fastboot on your computer.
- Installs the necessary USB drivers for your Android device.
- Downloads the required packages from the official Google repository.
- Installs the packages with elevated privileges.
- Provides detailed messages during the installation process.
- Asks for your permission to run with administrative privileges before proceeding.
- Cleans up the temporary files after installation.

## Usage

1. Download the `install.bat` file from the [latest release](https://github.com/celalizolu/online-adb-installer/releases/latest).
2. Double-click the `install.bat` file to run the script.
3. Follow the instructions provided by the script.

The script will ask for your permission to run with administrative privileges before proceeding. This is necessary to install the USB drivers and add ADB and Fastboot to your system path.

Once you have given permission, the script will download the latest version of ADB and Fastboot from the official Google repository and extract them to a directory in your system drive. The script will also download the necessary USB drivers for your Android device and install them with elevated privileges.

## Requirements

- Windows operating system.
- Internet connection.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or concerns, please feel free to contact me on Instagram at [@celalizolu](https://www.instagram.com/celalizolu/). I will be happy to help you.

---

Font used for this README: [Montserrat](https://fonts.google.com/specimen/Montserrat) by Julieta Ulanovsky. This font is licensed under the SIL Open Font License, Version 1.1.

## Optimizations

- The script now downloads and installs the latest Google USB drivers for Android devices. This will ensure that your device is recognized by your computer when connected via USB.
- The script has been optimized to ensure compatibility with Windows 10 and the latest versions of ADB and Fastboot.

Note: If you have previously installed ADB or Fastboot on your computer, you may need to remove them before running this script to avoid conflicts.
