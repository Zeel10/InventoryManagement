<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
</head>


    <!--Upper nav bar-->
    

<body>
  <jsp:include page="providerHeader.jsp"></jsp:include>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li  role="presentation"><a href="Provider_loggedin.jsp">Items </a></li>
                    <li class="active" role="presentation"><a href="#">Users </a></li>
                    <li role="presentation"><a href="#">Third Item</a></li>
                </ul>
            </div>

   <!--Lower part-->
   <div>
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#tab-1" role="tab" data-toggle="tab">Issued</a></li>
            <li><a href="#tab-2" role="tab" data-toggle="tab">Second</a></li>
            <li><a href="#tab-3" role="tab" data-toggle="tab">Third Tab</a></li>
        </ul>
        <div class="tab-content">
        <div class="tab-pane active" role="tabpanel" id="tab-1">
                <%@include file="../weber/Provider_Stock_detail_users.jsp"%></%@include>
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-2">          
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-3">
                <p>Third tab content.</p>
            </div>
        </div>

   
</body>

</html>