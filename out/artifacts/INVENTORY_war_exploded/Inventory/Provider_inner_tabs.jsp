<!--<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
-->
<html>
    <div>
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#tab-1" role="tab" data-toggle="tab">Add New Item</a></li>
            <li><a href="#tab-2" role="tab" data-toggle="tab">Second</a></li>
            <li><a href="#tab-3" role="tab" data-toggle="tab">Third Tab</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" role="tabpanel" id="tab-1">
                <%@include file="../Provider/Add_new_items.jsp"%></%@include>
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-2">          
            </div>
            <div class="tab-pane" role="tabpanel" id="tab-3">
                <p>Third tab content.</p>
            </div>
        </div>
    </div>
    </html>