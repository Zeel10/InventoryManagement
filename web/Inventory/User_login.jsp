<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>web_site_login</title>
    <link rel="stylesheet" href=" ../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href=" ../fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <link rel="stylesheet" href="../css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="../css/Pretty-Header.css">
    <link rel="stylesheet" href="../css/Google-Style-Login.css">
    <link rel="stylesheet" href="../css/Pretty-Footer.css">
     <script src="../js/jquery.min.js"></script>
    <script src=" ../js/bootstrap.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Inventory Management</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li role="presentation">
                        <a href="../Admin/Admin_login_redirect.jsp">Admin Login</a></li>
                    <li role="presentation">
                        <a href="Provider_login_redirect.jsp">Provider Login</a></li>
                    <li role="presentation" class="active"><a href=#>User Login</a></li>
                </ul>
            </div>
        </div>
    </nav> 
    <div class="login-card"><img src="../img/avatar_2x.png" class="profile-img-card">
        <p class="profile-name-card">USER </p>
        <form class="form-signin" action="User_login_authenticate.jsp"><span class="reauth-email"> </span>
            
            <input class="form-control" type="email" required="" placeholder="Email address" autofocus id="inputEmail" name="inputEmail">
            <input class="form-control" type="password" required="" placeholder="Password" id="inputPassword"
                   name="inputPassword">
            <div class="checkbox">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Remember me</label>
                </div>
            </div>
            <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
        <c:out value="${param.errMsg}"/>
            </c:if>
        </font>
        <a href="#" class="forgot-password">Forgot your password?</a></div>
   
</body>

</html>