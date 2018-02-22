<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<html>

 <meta name="viewport" content="width=device- width,initial scale=1">
 <head>
 <link rel="stylesheet" href="http://www.w3schools.com/w3css/3/w3.css">    
     <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>



<div class="container">
	<jsp:include  page="adminHeader.jsp"></jsp:include>
	<h1 style="margin-top: 10px;">Add-User</h1>
	<div class="jumbotron">
	<form action="Server_adduser.jsp" method="get" onsubmit="return validateForm()">
     <div class="row">
	   <div class="col-md-6 col-xs-6">
		  <div class="form-group">
			<label for="Enter_fname">First Name</label>
			<input type="text" class="form-control" name="Enter_fname" id="Enter_fname">
		</div>
		</div>
	   <div class="col-md-6 col-xs-6">
		  <div class="form-group">
			<label for="Enter_lname">Last Name</label>
			<input type="text" name="Enter_lname" class="form-control" id="Enter_lname">
			</div>
        </div>
  </div>
      <div class="row">
        	<div class="col-md-6 col-xs-6">
            <div class="form-group">
            	<label for="select_designation">Designation</label>
         	 <select class="form-control btn-success" name="select_designation" id="select_designation" >
        	 	<option value="Please select" >Please select</option>
        	 	<option value="HOD">Head of Department</option>
        	 	<option value="Dir">Director</option>


        	  </select>
             </div>
         </div>
            <div class="col-md-6 col-xs-6">
            	<div class="form-group">
            		<label for="select_department">Department</label>
            		<select class="form-control btn-success" name="select_department" id="select_department" >
            			<option value="Please select">Please select</option>
            			<option value="CS">Computer Science</option>
            			<option value="ME">Mechanical Eng</option>

            		</select>
            	</div>
            
        </div>
    </div>

        <div class="row">
        	<div class="col-md-6 col-xs-6">
        		<div class="form-group">
        			<label for="uniqueid">UniqueId</label>
                      <input type="text" name="uniqueid" class="form-control" id="uniqueid">
        		

        		</div>
        	</div>
			<div class="col-md-6 col-xs-6">
				<div class="form-group">
					<label for="select_department">Department</label>
					<select class="form-control btn-success" name="userType" id="userType" >
						<option value="Please select">Please select</option>
						<option value="Admin">Admin</option>
						<option value="Provider">Provider</option>
						<option value="user">User</option>

					</select>
				</div>
        </div>
		</div>
        <div class="row">
        	<div class="col-md-6 col-xs-12">
         <div class="form-group">
        	<label for="Emailinput">Email</label>
        	<input class="form-control" type="text" name="Emailinput" id="Emailinput">
              
        </div>
         </div>
        </div>
        <div class="row">
        	<div class="col-md-6 col-xs-12">
        		<label for="Password">Password</label>

        		<input type="Password" name="Password" class="form-control" id="Password">
        	</div>
			<div class="col-md-3 col-xs-3">
				<br>
				<input type="submit" class="btn-primary btn btn-lg" value="submit">
			</div>
			<div class="col-xs-3 col-md-3">
				<br>
				<button type="Reset" class="btn btn-primary btn-lg">Reset</button>
			</div>
        </div>
	</form>
</div>
</div>
</body>

 <script>
     function validateForm() {
         var nameField      =document.querySelector("input[name='Enter_fname']");
         var lastField      =document.querySelector("input[name='Enter_lname']");
         var desigSelect    =document.querySelector("select[name='select_designation']");
         var departSelect   =document.querySelector("select[name='select_department']");
         var userType		=document.querySelector("select[name='userType']");
         var uniqueId       =document.querySelector("input[name='uniqueid']");
         var emailInput     =document.querySelector("input[name='Emailinput']");
         var passWord       =document.querySelector("input[name='Password']");
		 var stringDesig	=desigSelect.options[desigSelect.selectedIndex].value.toString();
		 var stringDepart	=departSelect.options[departSelect.selectedIndex].value.toString();
		 var stringUser		=userType.options[userType.selectedIndex].value.toString();
         if (nameField.value===""){
             alert("Can't be empty");
             return false;

         }else if (lastField.value===""){
             alert("Can't be empty");
             return false;
         }else if (stringDesig==="Please select") {

             //var newpara = document.createElement("error");
             //newpara.textContent = " Select a valid option";
             // selecField.appendChild(newpara);
             alert("Can't be empty");
             return false;
         }else if (stringUser==="Please select") {

                 //var newpara = document.createElement("error");
                 //newpara.textContent = " Select a valid option";
                 // selecField.appendChild(newpara);
                 alert("Can't be empty");
                 return false;
         }else if (stringDepart==="Please select"){
                 //var newparas=document.createElement("error");
                // newparas.textContent=" Select a valid option";
                // departSelect.appendChild(newparas);
             alert("Can't be empty");
             return false;
         }else if (uniqueId.value===""){
             alert("Can't be empty");
             return false;
         }else if (emailInput.value===""){
             alert("Can't be empty");
             return false;
         }else if (passWord.value===""){
             alert("Can't be empty");
             return false;
         }
         else {
             return true;
         }

     }





 </script>
</html>