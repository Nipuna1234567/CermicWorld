<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">

	<title>Ceramic World</title>



	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	
	<link rel="stylesheet" href="web/css/st.css">
	<script src="web/js/de.js"></script>
	
<!-- Footer-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer2.css">
<link rel="stylesheet" type="text/css" href="web/css/stylescer.css">

</head>
<body>
	<div class="box-area">
		<header>
			<div class="wrapper">



				<nav>
					<div class="content">
						<img class="img" src="web/images/lo.png"  width="850px" height="400px"  ">
					</div>
				<a href="Home.jsp">Home</a>
				<a href="#">About</a>
				<a href="TransportHome.jsp">Transport</a>
				
				<a href="#">Contact</a>

				</nav>
			</div>
		</header>
		<div class="banner-area">
			<div class="w3-content w3-section"  style="margin-right: 0px;margin-left: 0px;  ">


			  <img class="mySlides w3-animate-fading" src="web/images/BG1.jpg" >
			  <img class="mySlides w3-animate-fading" src="web/images/BG2.jpg">
			  <img class="mySlides w3-animate-fading" src="web/images/BG3.jpg" >
				<img class="mySlides w3-animate-fading" src="web/images/BG4.jpg" >
				<img class="mySlides w3-animate-fading" src="web/images/BG5.jpg" >
				<img class="mySlides w3-animate-fading" src="web/images/img.jpg" >
				<img class="mySlides w3-animate-fading" src="web/images/img.jpg" >
				<img class="mySlides w3-animate-fading" src="web/images/img.jpg" >

			</div>
		</div>

		<div class="content-area">
			<div class="wrapper">

		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>		<br><br><br>

<div class="flex">

	<div class="para1">
		<h2>WHO ARE WE ?</h2>
		<p>Auto mart Service Station was established in 2011 in Kandy. At that point there was a huge need of a service station for the vehicles around Kandy. When in 2011.  with the profit within these years the company has decided to establish a new branch in Colombo as well. And this company is moving fast and capable of establishing few more branches around the country as well.</p>
	</div>
	<div class="para2">
			<h2>OUR MISSION...</h2>
		<p> Our Mission is to provide honest automotive repair, quality workmanship and exceptional service. This will allow long-term growth and profitability while providing future opportunities for our employees. This Mission is only possible by attaining the following goals that we established for our business, our employees and our customers.</p>
	</div>
	<div class="para3">
		<h2>WHY US ?</h2>
		<ul class="ul">
			<li class="li">Dedication to Customer Satisfaction</li>
			<li class="li">24 Hour Service</li>
			<li class="li">Multiple Locations</li>
			<li class="li">Preferred by Insurance Companies</li>
			<li class="li">Special Offers</li>
			<li class="li">Certified Technicians</li>
			<li class="li">Warranties</li>
			<li class="li">Same Day Repairs</li>
		</ul>
	</div>
</div>



<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 9000);
}
</script>


<footer class="container-fluid bg-grey py-5">
<div class="container">
   <div class="row">
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 ">
               <div class="logo-part">
                  <img src="web/images/lo.png"  width="350px" height="180px"  align="right" >
                  <p1>Ceramic World© (pvt).Ltd Company</p1>
                  
                  
               </div>
            </div>
            <div class="col-md-6 px-4">
               <h6> About Company</h6>
               <p>We a gathering of multi skilled.</p>
               <a href="#" class="btn-footer"> More Info </a><br>
               <a href="#" class="btn-footer"> Contact Us</a>
            </div>
         </div>
      </div>
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 px-4">
               <h6> Help us</h6>
               <div class="row ">
                  <div class="col-md-6">
                     <ul>
                        <li> <a href="#"> Home</a> </li>
                        <li> <a href="#"> About</a> </li>
                        <li> <a href="#"> Service</a> </li>
                        <li> <a href="#"> Team</a> </li>
                        <li> <a href="#"> Help</a> </li>
                        <li> <a href="#"> Contact</a> </li>
                     </ul>
                  </div>
                  
                  <div class="col-md-6 px-4">
                  
                     <ul>
                        <li> <a href="Home.jsp"> Home</a> </li>
                        <li> <a href="#"> Supplier</a> </li>
                        <li> <a href="ProductManagementHome.jsp"> Product</a> </li>
                        <li> <a href="#"> Sales</a> </li>
                        <li> <a href="TransportHome.jsp"> Transport </a> </li>
                        <li> <a href="#"> Policy</a> </li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md-6 ">
               <h6> Newsletter</h6>
               <div class="social">
                  <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
               </div>
               <form class="form-footer my-3">
                  <input type="text"  placeholder="search here...." name="search">
                  <input type="button" value="Go" >
               </form>
               <p>World Best Ceramic Company </p>
            </div>
         </div>
      </div>
   </div>
</div>
</footer>










		</div>
	</div>

</body>
</html>
