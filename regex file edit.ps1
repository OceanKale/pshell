### Gets all file content in $FileDir (can be quite large if using wildcards/entire directory), 
### replaces each instance of $ToBeReplaced with $ReplaceWith destructively

### can use select-string c:\dir\ -pattern "corn" (to non-destructively search for pattern)

$FileDir = "c:\users\corn\test\*.txt" ### edits ALL text files in the directory
$ToBeReplaced = "\*BK:" ## need to escape wildcard
$ReplaceWith = "PIZZA"


get-content -path $FileDir | foreach-object {$_ -replace $ToBeReplaced, $ReplaceWith} | set-content -path $FileDir

### we can expand it with the below; obv don't run all at once, can potentially be a lot of data and this is inefficient getting/setting

get-content -path "c:\users\corm\desktop\test\*.837" | foreach-object {$_ -replace "`", ""} | set-content -path "c:\users\corm\desktop\test\*.837"
get-content -path "c:\users\corm\desktop\test\*.837" | foreach-object {$_ -replace "CAS\*CO\*45\*0", ""} | set-content -path "c:\users\corm\desktop\test\*.837" ### need to decrement line count after, so need to count lines
select-string "c:\users\corm\desktop\test\*.837" -pattern ":UNK~"
