<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="eStoreProduct.model.AdminViewPayments" %>
<%@ page import="java.util.*" %>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
<script>
$(document).ready(function() {
    $("#filterForm").submit(function(event) {
        event.preventDefault(); // Prevent form submission
        
        var startDate = $("#startDate").val();
        //var date1=new java.sql.Date(startDate.getTime());
        //console.log("date1      "+date1);
        var endDate = $("#endDate").val();
        console.log(startDate+"startdate");
        console.log("end  "+endDate);
        
        var url = "getBetweenDatesPayments"; // Replace with your actual controller URL
        
        $.ajax({
            url: url,
            method: "GET",
            data: {
                startDate: startDate,
                endDate: endDate
            },
            success: function(response) {
            	//console.log(response+"   response of getdates");
                //window.location.href="viewPayments";
            	$("#paymentcontent").html(response); // Replace the table body with the filtered payments
            },
            error: function(xhr, status, error) {
                console.log("AJAX error:", error);
            }
        });
    });
});
function filterPayments()
{
	var filter=document.getElementById("filterSelect").value;
	$.ajax({
        type: "POST",
        url: "filterPayments",
        data: { priceRange: filter },
        success: function(response) {
        	 $('#paymentcontent').html(response);
        },
        error: function() {
            alert("Error occurred while filtering product details.");
        }
    });	
}
</script>
</head>
<body>
<div class="container mt-5" id="paymentcontent"><div>
    <div class="filter-form">
            <form id="filterForm" class="fas fa-calendar-alt">
                <label for="startDate">Start Date:</label>
                <input type="date" id="startDate" name="startDate" required>
                <label for="endDate">End Date:</label>
                <input type="date" id="endDate" name="endDate" required>
                <button type="submit">Filter</button>
            </form>
            <div align="right">
                <b><label for="filterSelect">Filter By:</label></b>
                <select id="filterSelect" onchange="filterPayments()" class="form-select">
                    <option value="default" selected disabled hidden>All</option>
                    <option value="0-10000">Price (Rs. 0-10000)</option>
                    <option value="10000-20000">Price (Rs. 10000-20000)</option>
                    <option value="20000-30000">Price (Rs. 20000-30000)</option>
                    <option value="above 30000">Price (Above 30000)</option>
                </select>
            </div></div>
    <!-- <form id="filterForm" class="fas fa-calendar-alt">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" required><br>
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required><br>
        <button type="submit">Filter</button>
    </form></div><div align="right">
    <b><label for="filterSelect">Filter By </label></b>
    <select id="filterSelect" onchange="filterPayments()" class="form-select">
        <option value="default" selected disabled hidden>All</option>
        <option value="0-10000">Price (Rs. 0-10000)</option>
        <option value="10000-20000">Price (Rs. 10000-20000)</option>
        <option value="20000-30000">Price (Rs. 20000-30000)</option>
        <option value="above 30000">Price (Above 30000)</option>
    </select></div> -->
    <div >
    <table id="tableData" class="table table-bordered table-hover">
        <thead class="thead-dark">
            <tr>
                <th>Order Id</th>
                <th>Order Billno</th>
                <th>Order payreference</th>
                <th>Order total</th>
                <th>Payment Done On</th>
            </tr>
        </thead>
        <tbody>
            <% List<AdminViewPayments> payments = (List<AdminViewPayments>) request.getAttribute("payments");
    		if(payments!=null){%>
            <% for (AdminViewPayments payment : payments) { %>
                <tr>
                    <td><%= payment.getOrderid() %></td>
                    <td><%= payment.getOrderbillno() %></td>
                    <td><%= payment.getOrderpayreference() %></td>
                    <td><%= payment.getOrdertotal() %></td>
                    <td><%= payment.getPaydate() %></td>
                </tr>
            <% }}
    		else
    		{
    		%>No payments are there<%} %>
        </tbody>
    </table>
    </div>
</div>
</body>
</html>
 --%>
 
 <!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Payment Details</title>
    <style>
        .container {
            margin-top: 50px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        .filter-form {
            display: flex;
            flex-direction: column;
        }

        .filter-form label,
        .filter-form input,
        .filter-form button {
            margin-bottom: 10px;
        }

        .filter-form button {
            align-self: flex-start;
        }

        .filter-select {
            align-self: flex-end;
        }
    </style>
    <script>
        $(document).ready(function() {
            $("#filterForm").submit(function(event) {
                event.preventDefault(); // Prevent form submission

                var startDate = $("#startDate").val();
                var endDate = $("#endDate").val();
                console.log(startDate + "startdate");
                console.log("end  " + endDate);

                var url = "getBetweenDatesPayments"; // Replace with your actual controller URL

                $.ajax({
                    url: url,
                    method: "GET",
                    data: {
                        startDate: startDate,
                        endDate: endDate
                    },
                    success: function(response) {
                        $("#paymentcontent").html(response); // Replace the table body with the filtered payments
                    },
                    error: function(xhr, status, error) {
                        console.log("AJAX error:", error);
                    }
                });
            });
        });

        function filterPayments() {
            var filter = document.getElementById("filterSelect").value;
            $.ajax({
                type: "POST",
                url: "filterPayments",
                data: { priceRange: filter },
                success: function(response) {
                    $('#paymentcontent').html(response);
                },
                error: function() {
                    alert("Error occurred while filtering product details.");
                }
            });
        }
    </script>
</head>
<body>
<div id="paymentcontent">
<div class="container" >
    <div class="filter-form">
        <form id="filterForm" class="fas fa-calendar-alt">
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" required>
            <br>
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate" required>
            <br>
            <button type="submit">Filter</button>
        </form>
    </div>
    <div align="right">
        <b><label for="filterSelect">Filter By</label></b>
        <select id="filterSelect" onchange="filterPayments()" class="form-select filter-select">
            <option value="default" selected disabled hidden>All</option>
            <option value="0-10000">Price (Rs. 0-10000)</option>
            <option value="10000-20000">Price (Rs. 10000-20000)</option>
            <option value="20000-30000">Price (Rs. 20000-30000)</option>
            <option value="above 30000">Price (Above 30000)</option>
        </select>
    </div>
</div>
<div class="container" >
    <div>
        <table id="tableData" class="table table-bordered table-hover">
            <thead class="thead-dark">
            <tr>
                <th>Order Id</th>
                <th>Order Billno</th>
                <th>Order payreference</th>
                <th>Order total</th>
                <th>Payment Done On</th>
            </tr>
            </thead>
            <tbody>
            <% List<AdminViewPayments> payments = (List<AdminViewPayments>) request.getAttribute("payments");
                if(payments!=null){%>
                <% for (AdminViewPayments payment : payments) { %>
                    <tr>
                        <td><%= payment.getOrderid() %></td>
                        <td><%= payment.getOrderbillno() %></td>
                        <td><%= payment.getOrderpayreference() %></td>
                        <td><%= payment.getOrdertotal() %></td>
                        <td><%= payment.getPaydate() %></td>
                    </tr>
                <% }}
                else
                {
                %>
                <tr>
                    <td colspan="5">No payments are there</td>
                </tr>
                <%} %>
            </tbody>
        </table>
    </div></div>
</div>
</body>
</html>
 