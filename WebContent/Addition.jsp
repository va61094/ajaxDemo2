<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
var s=null;
function add(){

var firstNo=document.getElementById("firstNo").value;
var secondNo=document.getElementById("secondNo").value;
var btnPress=document.getElementById("Add").value;
s= new XMLHttpRequest();
s.open("GET", "AddXml.jsp?x="+firstNo+"&y="+secondNo+"&z="+btnPress, true);
s.send();
s.onreadystatechange=function(){
	if(s.readyState==4 && s.status==200){
		xmlDoc = s.responseXML;
		var x= xmlDoc.getElementsByTagName("result")[0];
		var y= x.childNodes[0];
		document.getElementById("result").value=y.nodeValue;
		
	}
};}
</script>
</head>
<body>
<center><h1>Addition</h1><br>
First No.:<input type="text" id="firstNo"><br><br>
Second No.:<input type="text" id="secondNo"><br><br>
Result:<input type="text" name="result" id="result"><br><br>
<input type="button" id="Add" value="ADD" onclick="add()"></center>


</body>
</html>