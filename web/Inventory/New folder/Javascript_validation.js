<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>JavaScript_validation</title>
<script>
	function validateForm()
	{
		var x=document.forms["Login"]["fname"].value;
		if(x=="")
			{
				alert("Name must be filled");
				return false;
			}
	}
	</script>
</head>

<body>
<form name="Login" onSubmit="return validateFrom()" method="post">
	Name:<input type="text" name="fname">
	<input type="submit" value="Submit">
	
</form>
</body>
</html>
