## RemoveNetworkPrinters

$computer = $env:computername

try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\*ill-10*"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\*linic-10*"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\*xecutive-*"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\first floor finance"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\first floor purchasing"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\first floor distribution"} | foreach{$_.delete()}} catch{}
try{Get-WmiObject -class Win32_Printer -computer $computer | where{$_.name -like "\\*rint102*\first floor main"} | foreach{$_.delete()}} catch{}
