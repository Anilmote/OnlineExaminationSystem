<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus�">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" href="AdminRegister.css"/>
  <script>
  	function testing(value) {
  	var element = document.getElementById("loginForm");
  	var regElement = document.getElementById("registerForm");
  		if(value == "exist") {
  			regElement.style.display = "none";
  			element.style.display = "block";
  		} else {
  			regElement.style.display = "block";
  			element.style.display = "none";
  		}
  	}
  </script> 
 </head>
 
 <body>
  <div class="wrapper">
  <div class="container">
  <header class="header">
				<div class="header-logo"><img src="logo.png" height="100px" width="100px" alt="logo failed"/></div>
				<div class="header-text">
					<h1 class="header-text-h3" style="color:white">Online Examination System</h1>
				</div>
			</header> 
  <div class="section1">
					<div class="sec-staff"><h3 style="color:blue">Admin's Corner</h3></div><br><br>
					<div class ="staff-ex"><button class="staff-btn" style="color:white" onclick="testing('exist')"  >Existing Admin</button></div>
					<div class ="staff-new"><button class="sec-btn" style="color:white" onclick="testing('new')" >New Admin</button></div>
  </div>
  <div id="loginForm" style="display:none;">
  
		<!-- Banner -->
			
					<div class="section3">
					<div class="sec-staff"><h3 style="color:#D00000">Existing Admin..? Login</h3></div><br><br>
					    <pre><b><div class ="staff-ex">Login ID :<input type="text"  name="loginid" ></div>
                                 <div class ="staff-ex">Password :<input type="password"  name="pwd" ></div></b></pre><br>
					     <div class="button-click"><button class="button-cls"  style="color:white">Login</button></div>
                    </div>
  </div>
		<form action="Admin" method="post" >				
  	<div class="section2" id="registerForm">
  	<div class ="sec-reg">
  		<h3><center>New Admin..? Register Here</center></h3>
  	</div><br><br/><center><pre><b>
  
  	First Name: <input type="text" name="fname" /><br><br>
  	 Last Name: <input type="text" name="lname" /><br><br>
  	     Email: <input type="text" name="email" /><br><br>
  	  Password: <input type="password" name="password" /><br><br>
   Gender:<select name="gender"><option>Male</option>
               <option>Female</option></select><br><br>
   Designation:<select name="qualify"><option>Principal</option>
                       <option>Teacher</option>
                      </select>  <br><br>
      <!-- Date of Birth:<select name="date"> <option>29</option><option>28</option><option>27</option> <option>26</option><option>25</option><option>24</option> <option>23</option><option>22</option><option>21</option></select><select name="date"><option>january</option><option>february</option><option>march</option><option>april</option><option>may</option><option>june</option></select><select name="date"><option>2002</option><option>2001</option><option>2000</option><option>1999</option><option>1998</option><option>1997</option></select><br><br>
                             

 -->	
 <div class="button-click"><button type="submit" class="button-cls"  style="color:white">Register Now</button></div>
     </form> </b></pre></center>
  	
  	</div>
  	</div>
  	</div>
  	
  </body>
  
</html>
  