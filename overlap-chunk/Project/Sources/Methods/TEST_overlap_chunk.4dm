//%attributes = {"invisible":true}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	//execute in a worker to process callbacks
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	$file:=File:C1566("/DATA/sample.txt")
	
	var $overlap_chunk : cs:C1710.overlap_chunk
	$overlap_chunk:=cs:C1710.overlap_chunk.new()
	$results:=$overlap_chunk.chunk({file: $file; size: 40; overlap: 10})
	
End if 