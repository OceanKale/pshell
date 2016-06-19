# local cleanup

#try{robocopy "c:\rozinnpatdata" "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\India\PDF" "*.pdf"; remove-item -whatif "c:\rozinnpatdata\old\*.pdf";} catch{write-host "Couldn't copy/delete pdfs"}
try{copy-item -whatif "c:\rozinnpatdata\*.pdf" "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\India\PDF"; remove-item -whatif "c:\rozinnpatdata\old\*.pdf";} catch{write-host "Couldn't copy/delete pdfs"}
#try{robocopy "c:\rozinn\h4w\files" "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\India\SCP" "*.scp"; remove-item -whatif "c:\rozinnpatdata\old\*.scp";} catch{write-host "Couldn't copy/delete scps"}
try{copy-item -whatif "c:\rozinn\h4w\files\*.scp" "\\lwi.com\dfs\PATIENT\ARCHIVE\REPORTS\USA\ACTEX\India\SCP"; remove-item -whatif "c:\rozinnpatdata\old\*.scp";} catch{write-host "Couldn't copy/delete scps"}
try{remove-item -whatif "c:\rozinnpatdata\old\*.res"} catch{write-host "Couldn't delete res from c:\rozinnpatdata\old"}
try{remove-item -whatif "c:\rozinnpatdata\old\*.ini"} catch{write-host "Couldn't delete ini from c:\rozinnpatdata\old"}
try{remove-item -whatif "c:\lifewatch holter data\*.res"} catch{write-host "Couldn't delete res from c:\lifewatch holter data"}
try{remove-item -whatif "c:\lifewatch holter data\*.ini"} catch{write-host "Couldn't delete ini from c:\lifewatch holter data"}
