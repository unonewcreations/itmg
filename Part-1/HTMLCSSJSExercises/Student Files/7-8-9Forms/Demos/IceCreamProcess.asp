<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<%
Dim container
If Request.Form("container") = "" Then
	container = "dixie cup"
Else
	container = Request.Form("container")
End if

Dim flavor
If Request.Form("flavor") = "softChoc" Then
	flavor = "Soft chocolate"
ElseIf Request.Form("flavor") = "softVan" Then
	flavor = "Soft vanilla"
ElseIf Request.Form("flavor") = "softStraw" Then
	flavor = "Soft strawberry"
ElseIf Request.Form("flavor") = "hardChoc" Then
	flavor = "Hard chocolate"
ElseIf Request.Form("flavor") = "hardVan" Then
	flavor = "Hard vanilla"
ElseIf Request.Form("flavor") = "hardStraw" Then
	flavor = "Hard strawberry"
ElseIf Request.Form("flavor") = "hardMint" Then
	flavor = "Mint Chocolate Chip"
ElseIf Request.Form("flavor") = "hardCC" Then
	flavor = "Cookies and Cream"
Else
	flavor = "spinach"
End if

%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Thank you for your order!</title>
</head>
<body>
<h1>Thank you for your order!</h1>

<p>You will be getting a <%= container %> with lots of <%= flavor %> ice cream in it.</p>

<b>Toppings:</b><br>
<%
Dim toppings
toppings="<ul>"
If Request.Form("sprinkles") <> "" Then
	toppings = toppings & "<li>Sprinkles</li>"
End if
If Request.Form("nuts") <> "" Then
	toppings = toppings & "<li>Nuts</li>"
End if
If Request.Form("whip") <> "" Then
	toppings = toppings & "<li>Whipped Cream</li>"
End if
toppings = toppings & "</ul>"

If toppings <> "<ul></ul>" Then
	Response.Write toppings
Else
	Response.Write "none"
End if

%>
<p>You will be getting a <%=Request.Form("discount")%> discount off of our regular price of $10.00.
The ice cream will be delivered to you by email at <u><%=Request.Form("email")%></u>.</p>
<p>We will politely disregard your request of: <i> <%=Request.Form("requests")%></i></p>

</body>
</html>
