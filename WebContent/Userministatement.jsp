<html>

<head>
<SCRIPT LANGUAGE="JavaScript">
        function dil(form) {
            for (var i = 0; i < form.elements.length; i++) {
                if (form.elements[i].value == "") {
                    alert("Fill out all Fields")
                    document.F1.accountno.focus()
                    return false
                }
            }

            if (isNaN(document.F1.accountno.value)) {
                alert("Accountno must  be  varchar & can't be null")
                document.F1.accountno.value = ""
                document.F1.accountno.focus()
                return false
            }
            if (!isNaN(document.F1.username.value)) {
                alert("User Name  must  be  char's & can't be null")
                document.F1.username.value = ""
                document.F1.username.focus()
                return false
            }

            if (!isNaN(document.F1.password.value)) {
                alert("Password  must  be  char's & can't be null")
                document.F1.password.value = ""
                document.F1.password.focus()
                return false
            }

            return true
        }
    </SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HD BANK</title>
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
			<td width="400" valign="top"
				style="border-right: #666666 1px dotted;">
				<div id="welcome">

					<h1>TRANSACTIONS FORM</h1>
					<br>
					<table align="center" bgcolor="white">
						<tr>

						</tr>
						<tr>
							<td>
								<div>
									<%if(request.getAttribute("balance")!=null) {
                                            out.print(request.getAttribute("balance")); } %>
								</div>
								<form name=F1 onSubmit="return dil(this)"
									action="Userministatementdb.jsp" method="post">
									<table>
										<tr>
											<td>ACCOUNT NO:</td>
											<td><input type="text" name="accountno" /></td>
										</tr>
										<tr>
											<td>USER NAME:</td>
											<td><input type="text" name="username" /></td>
										</tr>
										<tr>
											<td>PASSWORD:</td>
											<td><input type="password" name="password" /></td>
										</tr>

										<tr>
											<td></td>
											<td><input class="button button2" type="submit"
												value="Submit" /> <input class="button button3"
												type="reset" value="Clear" />
									</table>
								</form>
							</td>
						</tr>
					</table>
				</div>
			</td>

			<td width="400" valign="top"
				style="border-right: #666666 1px dotted;">
				<div id="welcome">
					<h1>Welcome</h1>
					<br>
					<center>
						<img src="pictures/11.png" alt="business" width="196" height="106">
					</center>
					<br>
					<p>Welcome to AK BANKS. Here you can create new account ,
						withdraw money , deposit money , transfer money , check balance
						and can close your account online.</p>

				</div>
			</td>


		</tr>
	</table>

	<div id="footer_top">
		<div id="footer_navigation"></div>
		<marquee style="background-color: yellow; color: blue;">Beware
			of fictitious offers/ lottery winnings/ cheap funds offers</marquee>
		<div id="footer_copyright">

			<div class="slideshow-container">
				<div class="mySlides fade">
					<img src="pictures/5.jpg" style="width: 128%; height: 400px">
				</div>
				<div class="mySlides fade">
					<img src="pictures/4.jpg" style="width: 128%; height: 400px">
				</div>

				<div class="mySlides fade">
					<img src="pictures/3.jpg" style="width: 128%; height: 400px">
				</div>

				<div class="mySlides fade">
					<img src="pictures/2.jpg" style="width: 128%; height: 400px">
				</div>

				<div class="mySlides fade">
					<img src="pictures/1.jpg" style="width: 128%; height: 400px">
				</div>

			</div>
			<br>
			<div style="text-align: center">
				<span class="dot"></span> <span class="dot"></span> <span
					class="dot"></span> <span class="dot"></span> <span class="dot"></span>
			</div>
			<marquee style="background-color: yellow; color: blue;">HD
				never asks for your Card/PIN/OTP/CVV details on phone, message or
				email. Please do not click on links received on your email or mobile
				asking your Bank/Card details. | Attention Retail/Corporate INB
				Users, transaction OTP will be made mandatory for all merchant
				related transactions, hence please have your mobile varchar
				registered if the same has not been done until now.</marquee>
			Copyright �AK BANKSS
		</div>
		<script>
                var slideIndex = 0;
                showSlides();

                function showSlides() {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > slides.length) { slideIndex = 1 }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                    setTimeout(showSlides, 2000); // Change image every 2 seconds
                }
            </script>


	</div>

</body>

</html>