# Parrot HTB Setup Script

This repository contains a Bash script designed to automate the setup of Parrot OS for Hack The Box (HTB) environments. The script performs the following tasks:
- Updates and upgrades the system.
- Installs essential penetration testing tools.
- Configures user credentials for the system.
- Cleans up unnecessary files.
- Includes a self-erasing function upon completion.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/canstralian/parrot_htb_setup.git
   ```

2. Navigate to the project directory:
   ```bash
   cd parrot_htb_setup
   ```

3. Make the script executable:
   ```bash
   chmod +x parrot_htb_setup.sh
   ```

4. Run the script with superuser privileges:
   ```bash
   sudo ./parrot_htb_setup.sh
   ```

The script will run and configure your Parrot OS system for HTB usage, then automatically erase itself after completion.

## Requirements
- Parrot OS (or compatible Debian-based distribution)
- Internet connection

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue if you have suggestions or improvements.

## Acknowledgments
- [Hack The Box](https://www.hackthebox.com) for providing a platform for learning and practicing penetration testing skills.
