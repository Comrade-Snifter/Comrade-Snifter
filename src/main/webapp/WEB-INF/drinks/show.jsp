<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="${sessionScope.name}" />
    </jsp:include>
    <script src="https://kit.fontawesome.com/36f035c426.js" crossorigin="anonymous"></script>
    <style>
        <%@include file="/resources/css/vote.css"%>
        <%@include file="/resources/css/footer.css"%>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp">
    <jsp:param name="profileOne" value="/profile"/>
    <jsp:param name="profileTwo" value="Profile"/>
</jsp:include>

<div class="container">
    <jsp:include page="/WEB-INF/partials/drink-cards.jsp"/>
</div>

<div class="container">
    <form action="/drinks" method="get">
        <button type="submit">Go Back</button>
    </form>


<div class="container-fluid">
    <div class="row">
        <jsp:include page="/WEB-INF/partials/creator-profile-card.jsp" />
        <jsp:include page="/WEB-INF/partials/vote-card.jsp"/>
    </div>
</div>

<div class="footer"></div>
<script>
<%@include file="/resources/js/styling.js"%>
</script>
<jsp:include page="../partials/bootstrap.jsp"/>
</body>
</html>