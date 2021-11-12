<cfparam name="FORM.container" default="dixie cup">
<cfswitch expression="#FORM.flavor#">
	<cfcase value="softChoc">
		<cfset flavor="Soft chocolate">
	</cfcase>
	<cfcase value="softVan">
		<cfset flavor="Soft vanilla">
	</cfcase>
	<cfcase value="softStraw">
		<cfset flavor="Soft strawberry">
	</cfcase>
	<cfcase value="hardChoc">
		<cfset flavor="Hard chocolate">
	</cfcase>
	<cfcase value="hardVan">
		<cfset flavor="Hard vanilla">
	</cfcase>
	<cfcase value="hardStraw">
		<cfset flavor="Hard strawberry">
	</cfcase>
	<cfcase value="hardMint">
		<cfset flavor="Mint Chocolate Chip">
	</cfcase>
	<cfcase value="hardCC">
		<cfset flavor="Cookies and Cream">
	</cfcase>
	<cfdefaultcase>
		<cfset flavor="spinach">
	</cfdefaultcase>
</cfswitch>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Thank you for your order!</title>
</head>
<body>
<h1>Thank you for your order!</h1>
<cfoutput>
<p>You will be getting a #FORM.container# with lots of #flavor# ice cream in it.</p>

<b>Toppings:</b><br>
<cfset toppings="<ul>">
<cfif isDefined("FORM.sprinkles")>
	<cfset toppings="#toppings#<li>Sprinkles</li>">
</cfif>
<cfif isDefined("FORM.nuts")>
	<cfset toppings="#toppings#<li>Nuts</li>">
</cfif>
<cfif isDefined("FORM.whip")>
	<cfset toppings="#toppings#<li>Whipped Cream</li>">
</cfif>
<cfset toppings="#toppings#</ul>">
<cfif toppings NEQ "<ul></ul>">#toppings#<cfelse>none</cfif>

<p>You will be getting a #FORM.discount# discount off of our regular price of $10.00.
The ice cream will be delivered to you by email at <u>#FORM.email#</u>.</p>
<p>We will politely disregard your request of: <i>#FORM.requests#</i></p>
</cfoutput>
</body>
</html>
