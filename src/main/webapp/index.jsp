<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Comrade Snifter!" />
    </jsp:include>
    <style>
        <%@include file="resources/css/index.css"%>
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp">
    <jsp:param name="link" value="/drinks"/>
    <jsp:param name="linkTitle" value="View Drinks"/>
    <jsp:param name="profileOne" value="/profile"/>
    <jsp:param name="profileTwo" value="Profile"/>
    <jsp:param name="linkV" value="/login"/>
    <jsp:param name="linkVisitor" value="Login"/>
</jsp:include>

<main>

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Comrade Snifter</h1>
    <p class="lead text-center"><strong>com•rade</strong> - a companion who shares one's activities</p>
    <p class="lead text-right"><strong>snif•ter</strong> - <small>(INFORMAL)</small> a small quantity of an alcoholic drink</p>
  </div>
</div>


    <div class="container center" style="margin-top: 15px">
        <h1 class="text-center">Current Top Rated Drinks!</h1>
        <jsp:include page="/WEB-INF/partials/top3.jsp" />
    </div>

    <div class="pageInfo">

        <div class="container-fluid" style="display: flex; justify-content: space-around; flex-direction: column">
            <div class="homePageAbout" id="howTo" style="margin: 5px auto 5px 0; display: flex">
                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/pro.jpg" alt="Pro Mixer" height="200px">
                </div>
                <div class="descriptions" style="margin: auto">
                    <h3>With all the info you would ever need to make these drinks, using our site you will soon be mixing drinks like a pro!</h3>
                </div>
            </div>
            <div class="homePageAbout" id="shareDrinksToo" style="margin: 5px 0; display: flex">
                <div class="descriptions" style="margin: auto">
                    <h3>Sharing your favorite drinks has never been easier. Using our site, you will find it to be the number one stop for finding your new favorite drink!</h3>
                </div>
                <div>
                    <img src="${pageContext.request.contextPath}/resources/img/friends.jpg" alt="Share With Friends" height="200px">
                </div>
            </div>
           </div>
    </div>
</main>

<jsp:include page="/WEB-INF/partials/footer.jsp" />
<script>
<%@include file="/resources/js/styling.js"%>
</script>
    <jsp:include page="WEB-INF/partials/bootstrap.jsp"/>
</body>
</html>
