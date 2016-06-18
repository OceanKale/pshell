### Receiver controller

$portname = [System.IO.Ports.SerialPort]::getportnames()
$port= new-Object System.IO.Ports.SerialPort $portname,9600,None,8,one
$port.open()

[Byte[]] $on = 0xFE,0x03,0xC3,0x10,0x4B,0x21
[Byte[]] $off = 0xFE,0x03,0xC3,0x10,0x4A,0x20
[Byte[]] $mute = 0xFE,0x03,0xC3,0x10,0x1E,0xF4

$stuff = $true

do{
	[string]$command = Read-Host "What is your bidding, my master? Possible commands include on, off, mute, exit"
	if($command -like "on"){$port.WriteLine($on)}
	if($command -like "off"){$port.WriteLine($off)}
	if($command -like "mute"){$port.WriteLine($mute)}
	if($command -like "exit"){write-host "exiting..."; $port.Close(); exit}
}
while($stuff)
