# cleanup script
# recursively traverses the archive file tree and deletes all .scp files that were created over 180 days ago, and all .pdf files that were created over 60 days ago (both per Joe Clauser's request)

$today = get-date
$label = $today.tostring('MMddyyyyHmmss')
#try{gci -r "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\*.pdf" | where{$_.creationtime -lt $today.adddays(-60)} | remove-item -whatif} catch{write-host "Could not remove PDF"}
#try{gci -r "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\*.scp" | where{$_.creationtime -lt $today.adddays(-180)} | remove-item -whatif} catch{write-host "Could not remove SCP"}
write-host "Removing ACTex PDFs..."
write-host ""
try{gci -r "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\*\*.pdf" | where{$_.creationtime -lt $today.adddays(-59)} | tee c:\users\jeckhart\desktop\ACTexpdflog$label.txt | remove-item } catch{"Failed to get/remove actex pdfs"}
write-host "Removing ACTex SCPs..."
write-host ""
try{gci -r "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\*\*.scp" | where{$_.creationtime -lt $today.adddays(-179)} | tee c:\users\jeckhart\desktop\ACTexscplog$label.txt | remove-item } catch{"Failed to get/remove actex scps"}

#try{gci -r "\\lwi.com\dfs\DEPT\ACTex\90-Day-Archive\*.pdf" | where{$_.creationtime -lt $today.adddays(-60)} | remove-item -whatif} catch{write-host "Could not remove PDF from 90-day Archive"}
#try{gci -r "\\lwi.com\dfs\DEPT\ACTex\90-Day-Archive\*.scp" | where{$_.creationtime -lt $today.adddays(-180)} | remove-item -whatif} catch{write-host "Could not remove SCP from 90-day Archive"}

write-host "Removing 90-day PDFs..."
write-host ""
try{gci -r "\\lwi.com\dfs\DEPT\ACTex\90-Day-Archive\*\*.pdf" | where{$_.creationtime -lt $today.adddays(-59)} | tee c:\users\jeckhart\desktop\NinetyDaypdflog$label.txt | remove-item } catch{"Failed to get/remove 90-day archive pdfs"}
write-host "Removing 90-day SCPs..."
write-host ""
try{gci -r "\\lwi.com\dfs\DEPT\ACTex\90-Day-Archive\*\*.scp" | where{$_.creationtime -lt $today.adddays(-179)} | tee c:\users\jeckhart\desktop\NinetyDayscplog$label.txt | remove-item } catch{"Failed to get/remove 90-day archive scps"}
