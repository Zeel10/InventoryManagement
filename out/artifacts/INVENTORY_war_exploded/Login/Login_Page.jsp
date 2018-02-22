<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abohra
  Date: 12/4/17
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web_site_login</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="../fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/Google-Style-Login.css">
    <link rel="stylesheet" href="../css/Pretty-Footer.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style>
        .background-image {
            background-image: url("../world.jpg");
        }
    </style>
</head>

<body>
<div class="background-image">
<div class="container">
    <jsp:include page="indexHeader.jsp"></jsp:include>

<div class="login-card  ">
    <form class="form-signin" action="login_authenticate.jsp"><span class="reauth-email"> </span>


        <input class="form-control" type="email" autofocus="" required="" placeholder="Email address" autofocus id="inputEmail" name="inputEmail">
        <input class="form-control" type="password" required="" placeholder="Password" id="inputPassword" name="inputPassword">
        <div class="checkbox">
            <div class="checkbox">
                <label>
                    <input type="checkbox">Remember me</label>
            </div>
        </div>
        <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
        <p class="error" style="color: red"></p>
    </form>
</div>
</div>
</div>
</div>
</div>
</body>
<script>

    var errorField=document.querySelector(".error");
    var getError=<%=request.getParameter("error")%>;
    if(getError)
    {
        errorField.textContent="Email/password not valid";
    }

</script>
</html>