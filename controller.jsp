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
	<c:set var="act" value="${param.action}" />
	<jsp:useBean id="act" type="java.lang.String" />
	<c:choose>
		<c:when test='<%=act.equalsIgnoreCase("insert")%>'>
			<sql:update dataSource="${db_con}" var="status">
		INSERT INTO reservations (guest_name, check_in_date, number_of_guests, room_type, check_out_date, payment_method, additional_notes) VALUES ("${param.guest_name }","${param.check_in_date }","${param.number_of_guests }","${param.room_type }","${param.check_out_date }","${param.payment_method }","${param.additional_notes}");
</sql:update>

			<c:if test="${status>0 }">

				<script type="text/javascript">
					alert("Reservation Successful");
				</script>
				<p>You will be redirected in 2 seconds</p>
				<script>
					var timer = setTimeout(function() {
						window.location = 'view_reservation.jsp'
					}, 2000);
				</script>
			</c:if>
		</c:when>
		<c:when test='<%=act.equalsIgnoreCase("update")%>'>
			<script type="text/javascript">
				alert("Reservation Updation Successful");
			</script>
		</c:when>

		<c:when test='<%=act.equalsIgnoreCase("delete")%>'>
			<script type="text/javascript">
				alert("Reservation Updation Successful");
			</script>
		</c:when>

		<c:when test='<%=act.equalsIgnoreCase("search")%>'>
			<script type="text/javascript">
				alert("Reservation Record Found");
			</script>
		</c:when>
		<c:when test='<%=act.equalsIgnoreCase("register")%>'>

			<sql:update dataSource="${db_con}" var="status">
			INSERT INTO user (username, email, password) VALUES ("${param.regName }","${param.regEmail }","${param.regPass }");
	</sql:update>

			<c:if test="${status>0 }">

				<script type="text/javascript">
					alert("Registration Successful");
				</script>
				<p>You will be redirected in 2 seconds</p>
				<script>
					var timer = setTimeout(function() {
						window.location = 'index.jsp'
					}, 2000);
				</script>
			</c:if>

		</c:when>

		<c:when test='<%=act.equalsIgnoreCase("login")%>'>

			<sql:query dataSource="${db_con}" var="status">
select count(*)from user where email="${param.inEmail}" and password="${param.inPass}";	
</sql:query>
			<c:if test="${status.rowsByIndex[0][0]==1}">


				<script type="text/javascript">
					alert("Login Successful");
				</script>
				<p>You will be redirected in 2 seconds</p>
				<script>
					var timer = setTimeout(function() {
						window.location = 'dashboard.jsp'
					}, 2000);
				</script>
			</c:if>
<c:if test="${status.rowsByIndex[0][0]==0}">


				<script type="text/javascript">
					alert("Login Fail");
				</script>
				<p>You will be redirected in 2 seconds</p>
				<script>
					var timer = setTimeout(function() {
						window.location = 'index.jsp'
					}, 2000);
				</script>
			</c:if>

		</c:when>
	</c:choose>


</body>
</html>