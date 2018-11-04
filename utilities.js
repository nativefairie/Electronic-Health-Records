$( document ).ready(function() {
    var i = 0;
    var txt = 'Developed for Semantic Web Course';
    var speed = 50;
  function typeWriter() {
  if (i < txt.length) {
    document.getElementById("subtitle").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
  }
}
typeWriter()

});

function loadXMLDoc(filename){
    if (window.ActiveXObject){
      xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    }else {
      xhttp = new XMLHttpRequest();
    }
    xhttp.open("GET", filename, false);
    try {xhttp.responseType = "msxml-document"} catch(err) {} // Helping IE11
    xhttp.send("");
    return xhttp.responseXML;
}

function displayResult(){
    xml = loadXMLDoc("elh.xml");
    xsl = loadXMLDoc("xslt.xsl");
    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document"){
      ex = xml.transformNode(xsl);
      document.getElementById("informations").innerHTML = ex;
    } else if (document.implementation && document.implementation.createDocument){
      xsltProcessor = new XSLTProcessor();
      xsltProcessor.importStylesheet(xsl);
      resultDocument = xsltProcessor.transformToFragment(xml, document);
      document.getElementById("informations").appendChild(resultDocument);
   }
}

var xmlDoc;
var xhr = new XMLHttpRequest();
xhr.overrideMimeType("text/xml");
xhr.open('GET', 'elh.xml');
xhr.send();
xhr.onreadystatechange = function(){
	if (xhr.readyState==4 && xhr.status==200){
        modifyImmunization();
        deleteAllergie();
        treatmentPlans();
	}
}
 
function modifyImmunization() {
    x = xmlDoc.getElementsByTagName("immunization")[0];
    alert(x)
	y = x.childNodes[0];
	y.nodeValue = lastName;
	z = y.nodeValue;
    alert("Searched the whole Stack OverFlow and it seems like you can't actually save changes made through input to xml, but here's your value:" + z)
}

function deleteAllergie() {

}

function treatmentPlans() {

}