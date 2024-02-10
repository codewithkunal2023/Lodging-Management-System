<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<sql:setDataSource var="db_con" driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/lodging_management" user="root"
	password="root" />
<title>Action Controller</title>
</head>
<body>
<sql:update dataSource="${db_con}" var="status">
INSERT INTO reservations_checkout (guest_name, check_in_date, number_of_guests, room_type, check_out_date, payment_method, additional_notes) VALUES ("${param.guest_name}","${param.check_in_date}","${param.number_of_guests}","${param.room_type}","${param.check_out_date}","${param.payment_method}","${param.additional_notes}");</sql:update>
	<sql:update dataSource="${db_con}" var="status">
DELETE FROM reservations WHERE reservation_id="${param.reservation_id}";</sql:update>
	<c:if test="${status>0 }">

		<script type="text/javascript">
			alert("Reservation Deletion Successful");
		</script>
		<p>You will be redirected in 2 seconds</p>
		<script>
			var timer = setTimeout(function() {
				window.location = 'checkout_all.jsp'
			}, 2000);
		</script>
	</c:if>


</body>
</html>