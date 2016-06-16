## Vy

add-type -assemblyname system.speech 
$x = 1
$wshell = new-object -comobject wscript.shell;
$synth = new-object -typename system.speech.synthesis.speechsynthesizer
$synth.rate = 7
do{
	write-host -nonewline "oily"
	$synth.speak("oily")
	#invoke-item "c:\documents and settings\dchavez\desktop\corncorn.png"
	
} while($x -lt 4)