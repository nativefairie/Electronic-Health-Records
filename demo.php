<?php
	function loadFile($xml, $xsl){
		$xmlDoc = new DOMDocument();
		$xmlDoc->load($xml);

		$xslDoc = new DOMDocument();
		$xslDoc->load($xsl);

		$proc = new XSLTProcessor();
		$proc->importStyleSheet($xslDoc);
		echo $proc->transformToXML($xmlDoc);
	}

	function updateFile($xml){
		$xmlLoad = simplexml_load_file($xml);
		$postKeys = array_keys($_POST);
		foreach($xmlLoad->children() as $x){ 
		  foreach($_POST as $ckey=>$value){ 
		    if($key == $x->attributes()){ 
		      $x->value = $value;
		    }
		  }
		} 
	$xmlLoad->asXML($xml);
	loadFile($xml,"elh_updated.xsl");
	}

	if($_POST["btn_sub"] == ""){
			loadFile("elh.xml", "xslt.xsl");
	} else {
			updateFile("elh.xml");
	}
?>