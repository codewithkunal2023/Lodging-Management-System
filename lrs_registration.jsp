<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lodging Management Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="nav.jsp" %>
    <div class="container">
        <h1 class="mt-5 mb-4">Lodging Reservation System</h1>
        <form action="controller.jsp" method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="guest_name" class="form-label">Guest Name:</label>
                        <input type="text" class="form-control text-capitalize" id="guest_name" name="guest_name" required>
                    </div>
                    <div class="mb-3">
                        <label for="check_in_date" class="form-label">Check-in Date:</label>
                        <input type="date" class="form-control" id="check_in_date" name="check_in_date" required>
                    </div>
                    <div class="mb-3">
                        <label for="number_of_guests" class="form-label">Number of Guests:</label>
                        <input type="number" class="form-control " id="number_of_guests" name="number_of_guests" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <label for="room_type" class="form-label">Room Type:</label>
                        <select class="form-select " id="room_type" name="room_type" required>
                            <option value="" disabled selected>-- Select Room Type --</option>
                            <option value="single">Single</option>
                            <option value="double">Double</option>
                            <option value="suite">Suite</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="check_out_date" class="form-label">Check-out Date:</label>
                        <input type="date" class="form-control " id="check_out_date" name="check_out_date" required>
                    </div>
                    <div class="mb-3">
                        <label for="payment_method" class="form-label">Payment Method:</label>
                        <select class="form-select  " id="payment_method" name="payment_method" required>
                            <option value="" disabled selected>-- Select Payment Method --</option>
                            <option value="cash">Cash</option>
                            <option value="credit_card">Credit Card</option>
                            <option value="debit_card">Debit Card</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <label for="additional_notes" class="form-label">Additional Notes:</label>
                <textarea class="form-control text-capitalize" id="additional_notes" name="additional_notes" rows="3"></textarea>
            <input type="hidden" name="action" value="insert">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>
