# Define a function to scan a single port
function Test-Port {
    param (
        [string]$targetIP,
        [int]$port
    )
    
    $tcpConnection = Test-NetConnection -ComputerName $targetIP -Port $port

    if ($tcpConnection.TcpTestSucceeded) {
        Write-Host "Port $port is OPEN"
    } else {
        Write-Host "Port $port is CLOSED"
    }
}

# Define the function to scan a range of ports
function Scan-Ports {
    param (
        [string]$targetIP,
        [int]$startPort,
        [int]$endPort
    )

    Write-Host "Scanning $targetIP from port $startPort to port $endPort..."

    for ($port = $startPort; $port -le $endPort; $port++) {
        Test-Port -targetIP $targetIP -port $port
    }
}

# Input from the user
$targetIP = Read-Host "Enter the IP address to scan"
$startPort = Read-Host "Enter the starting port" | ForEach-Object { [int]$_ }
$endPort = Read-Host "Enter the ending port" | ForEach-Object { [int]$_ }

# Run the scan
Scan-Ports -targetIP $targetIP -startPort $startPort -endPort $endPort
