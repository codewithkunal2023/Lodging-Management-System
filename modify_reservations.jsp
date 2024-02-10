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
 <h3 class="mt-5 mb-4 text-center">Modify Check In</h3>
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
<th>Notes</th>
<th>Update</th>
<th>CheckOut</th>
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
<td class="text-capitalize"><c:out value="${table.additional_notes}"/></td>
<td><a href="#"><button class="btn btn-dark">✅</button></a></td>
<td><a href="deleteReservation.jsp?reservation_id=${table.reservation_id}&guest_name=${table.guest_name}&check_in_date=${table.check_in_date}&number_of_guests=${table.number_of_guests}&room_type=${table.room_type}&check_out_date=${table.check_out_date}&payment_method=${table.payment_method}&additional_notes=${table.additional_notes}"><button class="btn btn-dark">❌</button></a></td>


</tr>  
</c:forEach>  
</table>  
<%@ include file="footer.jsp" %>
</body>
</html>