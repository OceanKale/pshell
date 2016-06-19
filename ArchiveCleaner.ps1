# cleanup script
# recursively traverses the archive file tree and deletes all .scp files that were created over 180 days ago, and all .pdf files that were created over 60 days ago

$today = get-date
$label = $today.tostring('MMddyyyyHmmss')
$PdfDir180 = ""
$ScpDir180 = ""

write-host "Removing PDFs older than 180 days..."
write-host ""
try{gci -r $PdfDir180 | where{$_.creationtime -lt $today.adddays(-179)} | tee c:\users\corn\desktop\pdflog$label.txt | remove-item } catch{"Failed to get/remove pdfs"}
write-host "Removing SCPs..."
write-host ""
try{gci -r $ScpDir180 | where{$_.creationtime -lt $today.adddays(-179)} | tee c:\users\corn\desktop\scplog$label.txt | remove-item } catch{"Failed to get/remove scps"}



