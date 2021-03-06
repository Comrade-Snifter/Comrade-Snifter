<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Profile" />
    </jsp:include>
    <style>
        <%@include file="/resources/css/footer.css"%>
    </style>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container" style="margin-top: 15px">
        <h1>Fill in the information you would like to change</h1>
        <form action="/editProfile" method="post">
            <div class="form-group">
                <label for="editUsername">Edit Username</label>
                <input id="editUsername" name="editUsername" class="form-control" type="text">
                <c:if test="${sessionScope.UsernameExists}">
                    <small class="errorMessage"> * Username Already Exists, Please Try Again</small>
                </c:if>
            </div>
            <div class="form-group">
                <label for="editEmailAddress">Edit Email Address</label>
                <input id="editEmailAddress" name="editEmailAddress" class="form-control" type="email">
            </div>
            <div class="form-group">
                <label for="editPassword">Edit Password</label>
                <input id="editPassword" name="editPassword" class="form-control" type="password">
                <c:if test="${sessionScope.poorQualityPassword}">
                    <small class="errorMessage"> * Password must be between 8-20 characters and Include a number, capital letter, and special character</small>
                </c:if>
            </div>
            <div class="form-group">
                <label for="confirm_password">Confirm Password</label>
                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                <c:if test="${sessionScope.passwordsDoNotMatch}">
                    <small class="errorMessage"> * Passwords Do Not Match</small>
                </c:if>
            </div>
            <div class="form-group">
                <label for="profilePic">Profile Picture</label>
                <input id="profilePic" name="profilePic" class="form-control" type="text">
            </div>
            <input type="submit" class="btn btn-danger btn-block">
        </form>
    </div>

    <div class="footer"></div>
<script>
<%@include file="/resources/js/styling.js"%>
</script>
<jsp:include page="../partials/bootstrap.jsp"/>
</body>
</html>