
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">


 <style>
     /* Dropdown Button */
     .dropbtn {
         background-color: #4CAF50;
         color: white;
         padding: 16px;
         font-size: 16px;
         border: none;
     }

     /* The container <div> - needed to position the dropdown content */
     .dropdown {
         position: relative;
         display: inline-block;
     }

     /* Dropdown Content (Hidden by Default) */
     .dropdown-content {
         display: none;
         position: absolute;
         background-color: #f1f1f1;
         min-width: 160px;
         box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
         z-index: 1;
     }

     /* Links inside the dropdown */
     .dropdown-content a {
         color: black;
         padding: 12px 16px;
         text-decoration: none;
         display: block;
     }

     /* Change color of dropdown links on hover */
     .dropdown-content a:hover {background-color: #ddd}

     /* Show the dropdown menu on hover */
     .dropdown:hover .dropdown-content {
         display: block;
     }

     /* Change the background color of the dropdown button when the dropdown content is shown */
     .dropdown:hover .dropbtn {
         background-color: #3e8e41;
     }
 </style>
</head>
<nav class="navbar navbar-default custom-header" style="background-color: #212529">
        <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="#">Inventory<span>Management </span> </a>
                </div>

                <div class="dropdown">
                    <button class="dropbtn">Menu</button>
                    <div class="dropdown-content">
                        <a href="request.jsp">Request</a>
                        <a href="Request_status.jsp">Request Status</a>
                        <a href="In_stock.jsp">In Stock</a>
                        <a href="My_history.jsp">My History</a>
                    </div>
                </div>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span><big><%=session.getAttribute("userid")%></big></a></li>
                <li><a href="../weber/logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
            </ul>


                        <!--<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>-->
            </div>


 </nav>