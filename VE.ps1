## Initializes synth, then proceeds to repeat indefinitely while writing $word ad infinitum (can also have it open picture[s] indefinitely)

add-type -assemblyname system.speech 
$x = 1
$word = oily
$wshell = new-object -comobject wscript.shell;
$synth = new-object -typename system.speech.synthesis.speechsynthesizer
$synth.rate = 7 ### repeat rate
do{
	write-host -nonewline $word
	$synth.speak($word)
	#invoke-item "corncorn.png" ### opens image file located at "path\to\image.ext"
	
} while($x -lt 2)
