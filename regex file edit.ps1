
### select-string c:\dir\ -pattern "corn" (to non-destructively search for pattern)
$FileDir = "c:\users\corn\test\*.txt" ### edits ALL text files in the directory
$ToBeReplaced = "\*BK:" ## need to escape wildcard
$ReplaceWith = "PIZZA"


(get-content -path $FileDir) | foreach-object {$_ -replace "\*BK:", "PIZZA"} | set-content -path $FileDir
