# Port_Scanner
This repository contains a simple PowerShell script to scan ports on a given target IP address. The script allows users to scan a range of ports to check if they are open or closed.

Features
Scan a range of ports on a given target IP.
Checks the status (open/closed) of each port in the specified range.
Provides feedback in the console for each port scanned.
Prerequisites
PowerShell (Windows, Linux, or macOS).
Internet connection to reach the target IP address.
How It Works
The script defines two functions:
Test-Port: Tests if a single port is open or closed on the target IP.
Scan-Ports: Scans a range of ports on the target IP.
The user is prompted to input:
The target IP address to scan.
The starting port number.
The ending port number.
The script then scans each port in the specified range and reports if it's open or closed.
How to Use
Clone or download this repository to your local machine.

Open PowerShell and navigate to the folder where you saved the script.

Run the script by entering the following command:

powershell
Copy code
.\port-scanner.ps1
Enter the target IP address when prompted.

Enter the starting and ending port numbers when prompted.

The script will scan the specified port range and output the status of each port.

Example Usage
powershell
Copy code
Enter the IP address to scan: 192.168.1.1
Enter the starting port: 80
Enter the ending port: 100
Output:

vbnet
Copy code
Scanning 192.168.1.1 from port 80 to port 100...
Port 80 is OPEN
Port 81 is CLOSED
Port 82 is OPEN
...
Contributing
Feel free to fork this repository, contribute improvements, or report any issues you encounter.
