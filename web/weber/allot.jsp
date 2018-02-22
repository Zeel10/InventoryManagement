<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>

<html>

<head>

	<title>Allot</title>

	<link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
     <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>

<body>

	<div class="container">
        <jsp:include page=""
		<div class="jumbotron">
		<div class="row">
			<h2>Issue Item</h2>
		</div>

		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

				<form>
					<div class="form-group">
						<label for="usr">User Id</label>
						<input type="text" class="form-control" id="usr">
					</div>
					<div class="row" style="height: 10px;"></div>
					<div class="form-group">
						<label for="pg">Permission Granted by</label>
						<input type="text" class="form-control" id="pg">
					</div>
					<div class="row" style="height: 10px;"></div>
					<div class="form-group">
              			<label for="Item_type">Item Type:</label>
              			<select class="form-control" name="Item_type" >
                			<option value=" ">Select From Following</option>
                			<option value="2">Ram</option> 
                			<option value="3">mouse</option>    
              			</select>
            		</div>
            		<div class="row" style="height: 10px;"></div>
            		<div class="form-group">
              			<label for="Item_detail">Item Details</label>
              			<input type="text" class="form-control" name="Item_details">      
            		</div>
					<div class="row" style="height: 10px;"></div>
					<div class="form-group">
						<label for="quantity">Quantity</label>
						<input type="text" class="form-control" id="quantity">
					</div>


					<div class="row" style="height: 10px;"></div>
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Reset</button>
				</form>

			</div>
		</div>

	</div>
	</div>
</body>

</html>