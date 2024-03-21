<%@page contentType="text/html; charset=EUC-KR" %>
<%@page pageEncoding="EUC-KR"%>
<%@page import = "org.json.simple.JSONObject" %>
<%@page import="org.json.simple.JSONArray" %>

<%--
		//JSON(JavaScript Object Notation)
	 	//==> 1. name= value Notation
	 	var test01 ={ a:'a', b:'b', c:'c'};
	 	
	 	//==> 2. array Notation
	 	var test02 =[ 'aa', 'bb', 'cc' ];

	 	//==> 3. name=value 와 array의 혼용
--%>
<%
	JSONObject obj = new JSONObject();
	obj.put("aaa","aaa");
	obj.put("bbb","bbb");
	
	JSONArray array = new JSONArray();
	array.add("z");
	array.add("zz");
	array.add("zzz");
	
	obj.put("ccc",array);
	
	System.out.println(obj);
%>

<%= obj %>


<%-- 
	- client 에서 parseJSON() 에서 Error 가 발생하면..
	- 아래와 같이 한다면...
{
	"aaa":"aaa",
	"bbb":"bbb",
	"ccc": [ "z","zz","zzz"]
}
 --%>