<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Table</title>
<sql:setDataSource var="db_con" driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/lodging_management" user="root" password="root" />
</head>
<body>
<%@ include file="nav.jsp" %>
 <h3 class="mt-5 mb-4 text-center">View Check In</h3>
<sql:query dataSource="${db_con}" var="rs">  
SELECT * from reservations;  
</sql:query>  
   
<table class="table table-success table-striped"width="100%">  
<tr>  
<th>Reservation ID</th>  
<th>Guest Name</th>  
<th>Check In</th>  
<th>No. of Guests</th>
<th>Room Type</th>
<th>Check Out</th>
<th>Payment Method</th>  

</tr>  

<c:forEach var="table" items="${rs.rows}">  

<tr>  
<td class="text-capitalize"><c:out value="${table.reservation_id}"/></td>  
<td class="text-capitalize"><c:out value="${table.guest_name}"/></td>  
<td class="text-capitalize"><c:out value="${table.check_in_date}"/></td>  
<td class="text-capitalize"><c:out value="${table.number_of_guests}"/></td>  
<td class="text-capitalize"><c:out value="${table.room_type}"/></td>
<td class="text-capitalize"><c:out value="${table.check_out_date}"/></td>
<td class="text-capitalize"><c:out value="${table.payment_method}"/></td>


</tr>  
</c:forEach>  
</table>  
<%@ include file="footer.jsp" %>
</body>
</html>