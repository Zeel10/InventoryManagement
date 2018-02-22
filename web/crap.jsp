<div>
    <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-1" role="tab" data-toggle="tab">Request Status</a></li>
        <li><a href="#tab-2" role="tab" data-toggle="tab">In Stock</a></li>
        <li><a class="text-primary" href="#tab-3" role="tab" data-toggle="tab">My History</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" role="tabpanel" id="tab-1">
            <p>sdvinaksnv </p>
            <%@include file="Request_status.jsp"%></%@include>
    </div>
    <div class="tab-pane" role="tabpanel" id="tab-2">
        <%@include file="In_stock.jsp"%></%@include>
    <p>Second tab content.</p>
</div>

<div class="tab-pane" role="tabpanel" id="tab-3">
    <h1>Your History:</h1>
    <%@include file="My_history.jsp"%></%@include>
</div>

</div>