<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>AK BANKS</title>

<link href="index.css" rel="stylesheet" type="text/css">

</head>

<body>
	<div id="top_links">

		<marquee style="background-color: yellow; color: blue;">"No
			carelessness until there is a cure" </marquee>

		<div id="header">
			<A href="AdminHome.html"><IMG SRC="pictures/12.png" height="50px"
				width="50px"></IMG></A> <A href="index.html" style="float: right"><img
				height="50px" width="50px" src="pictures/14.png"></A>
			<h1>
				HD - BANK<span class="style1"></span>
			</h1>
			<h2>Corporate Banking application</h2>

		</div>

		<div id="navigation">
			<ul>
				<li><a href="Adminaccount.jsp">All ACCOUNTS</a></li>
				<li><a href="Admindeposit.jsp">DEPOSIT</a></li>
				<li><a href="Adminwithdraw.jsp">WITHDRAW</a></li>
			</ul>
		</div>
	</div>

	<table style="background: #FFFFFF; margin: 0 auto;">
		<tr align="justify">
			<td width="400" valign="top"
				style="border-right: #666666 1px dotted;">
				<div id="services">
					<h1>Services</h1>
					<br>
					<ul>
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contactus.html">Contact Us</a></li>
					</ul>

				</div>
			</td>


			<td width="800" valign="top">
				<%

				%>
				<table>
					<tr>
						<td align="center" valign="middle" bgcolor="red"><h4>Account
								Info</h4></td>
					</tr>
					<tr>
						<td>
							<%
							if (request.getAttribute("totalbalance") != null) {
								out.print(request.getAttribute("alert"));
								out.print(request.getAttribute("totalbalance"));
								
							}
							
							%>
						</td>
					</tr>



				</table> <%

 %>
			
	</table>
</html>