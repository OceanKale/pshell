## RemoveNetworkPrinters
## removes printers with names "like" $printer

$computer = $env:computername
$printer = "\\*rint102*\*ill-10*"

try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like $printer} | foreach{$_.delete()}} catch{}
