$1stbyte = 192
$2ndbyte = 168
$3rdbyte = 0
$4thbyte = 0
#multiple loops for other bytes, if desired
do{
	$pingstring = $1stbyte + "." + $2ndbyte + "." + $3rdbyte + "." + $4thbyte
	ping  $pingstring >> c:\users\jeckhart\desktop\pinglogs.txt
	$4thbyte++
} while($4thbyte -lt 256)
