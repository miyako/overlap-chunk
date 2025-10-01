Class extends _CLI

Class constructor($controller : 4D:C1709.Class)
	
	If (Not:C34(OB Instance of:C1731($controller; cs:C1710._overlap_chunk_Controller)))
		$controller:=cs:C1710._overlap_chunk_Controller
	End if 
	
	Super:C1705("overlap-chunk"; $controller)
	
Function get worker() : 4D:C1709.SystemWorker
	
	return This:C1470.controller.worker
	
Function terminate()
	
	This:C1470.controller.terminate()
	
Function chunk($option : Variant; $formula : 4D:C1709.Function) : Collection
	
	var $stdOut; $isStream; $isAsync : Boolean
	var $options : Collection
	var $results : Collection
	$results:=[]
	
	Case of 
		: (Value type:C1509($option)=Is object:K8:27)
			$options:=[$option]
		: (Value type:C1509($option)=Is collection:K8:32)
			$options:=$option
		Else 
			$options:=[]
	End case 
	
	var $commands : Collection
	$commands:=[]
	
	If (OB Instance of:C1731($formula; 4D:C1709.Function))
		$isAsync:=True:C214
		This:C1470.controller.onResponse:=$formula
	End if 
	
	For each ($option; $options)
		
		If ($option=Null:C1517) || (Value type:C1509($option)#Is object:K8:27)
			continue
		End if 
		
		$stdOut:=Not:C34(OB Instance of:C1731($option.output; 4D:C1709.File))
		
		$command:=This:C1470.escape(This:C1470.executablePath)
		
		$command+=" extract "
		
		Case of 
			: (OB Instance of:C1731($option.file; 4D:C1709.File)) && ($option.file.exists)
				$command+=" "
				$command+=This:C1470.escape(This:C1470.expand($option.file).path)
			: (OB Instance of:C1731($option.file; 4D:C1709.Blob)) || (Value type:C1509($option.file)=Is BLOB:K8:12) || (Value type:C1509($option.file)=Is text:K8:3)
				$command+=" - "
				$isStream:=True:C214
		End case 
		
		If ($option.size#Null:C1517) && ((Value type:C1509($option.size)=Is real:K8:4) || (Value type:C1509($option.size)=Is integer:K8:5)) && ($option.size>0)
			$command+=" --size "
			$command+=String:C10($option.size)
		End if 
		
		If ($option.overlap#Null:C1517) && ((Value type:C1509($option.overlap)=Is real:K8:4) || (Value type:C1509($option.overlap)=Is integer:K8:5)) && ($option.overlap>0)
			$command+=" --overlap "
			$command+=String:C10($option.overlap)
		End if 
		
		var $worker : 4D:C1709.SystemWorker
		$worker:=This:C1470.controller.execute($command; $isStream ? $option.file : Null:C1517; $option.data).worker
		
		If (Not:C34($isAsync))
			$worker.wait()
		End if 
		
		If ($stdOut) && (Not:C34($isAsync))
			//%W-550.26
			//%W-550.2
			$results.push(This:C1470.controller.stdOut)
			This:C1470.controller.clear()
			//%W+550.2
			//%W+550.26
		End if 
		
	End for each 
	
	If ($stdOut) && (Not:C34($isAsync))
		return $results
	End if 