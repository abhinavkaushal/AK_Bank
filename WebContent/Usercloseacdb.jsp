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
			<A href="Userhome.html"><IMG SRC="pictures/12.png" height="50px"
				width="50px"></IMG></A> <A href="index.html" style="float: right"><img
				height="50px" width="50px" src="pictures/14.png"></A>
			<h1>
				HD - BANK<span class="style1"></span>
			</h1>
			<h2>Corporate Banking application</h2>

		</div>

		<div id="navigation">
			<ul>
				<li><a href="UsernewAccount.html">NEW ACCOUNT</a></li>
				<li><a href="Userbalance.jsp">BALANCE</a></li>
				<li><a href="Usertransfer.jsp">TRANSFER</a></li>
				<li><a href="Userministatement.jsp">TRANSACTIONS</a></li>
				<li><a href="Userfd.jsp">FD</a></li>
				<li><a href="Usercloseac.jsp">CLOSE A/C</a></li>
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
					<%
					String num = request.getParameter("accountno");
					int accountno = Integer.parseInt(num);
					String username = request.getParameter("username");
					String password = request.getParameter("password");
					boolean status = false;

					Class.forName("com.mysql.jdbc.Driver");
					Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
					PreparedStatement ps = cn
							.prepareStatement("Select * from NEWACCOUNT where accountno=? and username = ? and password =?");
					ps.setInt(1, accountno);
					ps.setString(2, username);
					ps.setString(3, password);

					ResultSet rs = ps.executeQuery();
					status = rs.next();
					try {
						if (status == true) {
							out.print("Welcome    " + username);
							out.println("<hr>");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
							PreparedStatement ps1 = con.prepareStatement("delete from NEWACCOUNT where accountno=?");
							PreparedStatement ps2 = con.prepareStatement("delete from ministatement where accountno=?");
							PreparedStatement ps3 = con.prepareStatement("delete from fd where accountno=?");
							ps1.setInt(1, accountno);
							ps2.setInt(1, accountno);
							ps3.setInt(1, accountno);
							ps1.executeUpdate();
							ps2.executeUpdate();
							ps3.executeUpdate();
							

							out.print("&nbsp;&nbsp;&nbsp;your account no '" + accountno + "' has closed.");

						} else {
							out.print("Please check your username and Password");
							request.setAttribute("alert", "Please check your username and Password");
					%>
					<jsp:forward page="Usercloseac.jsp"></jsp:forward>
					<%
					}
					} catch (SQLException e) {
					e.printStackTrace();
					}
					%>
				</table> <%

 %>
			
	</table>

	<%@ page import="java.sql.*"%>
	<%@ page import="java.io.*"%>