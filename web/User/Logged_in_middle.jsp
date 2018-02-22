<div class="container">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-1" role="tab" data-toggle="tab">Request</a></li>
        <li><a href="#tab-2" role="tab" data-toggle="tab">Request Status</a></li>
        <li><a href="#tab-3" role="tab" data-toggle="tab">In Stock</a></li>
        <li><a class="text-primary" href="#tab-4" role="tab" data-toggle="tab">My History</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" role="tabpanel" id="tab-1">
            <jsp:include page="request.jsp"></jsp:include>
        </div>
        <div class="tab-pane " role="tabpanel" id="tab-2">
            <p> </p>
           <jsp:include page="Request_status.jsp"></jsp:include>
    </div>
    <div class="tab-pane" role="tabpanel" id="tab-3">
<jsp:include page="In_stock.jsp"></jsp:include>
</div>

<div class="tab-pane" role="tabpanel" id="tab-4">

    <jsp:include page="My_history.jsp"></jsp:include>
</div>

</div>
</div>