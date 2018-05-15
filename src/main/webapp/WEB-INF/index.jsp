<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts.js"></script>

    <title>NinJo Project</title>
</head>
<body>
<div class="home_container">
    <div class="foreground">
        <h1>${dojo_search_error}</h1>
        <h1>Welcome to the Dojos</h1>
        <br/>
        <button name="all_persons" class="btn-inverse" value="All Persons" onclick="location.href='/dojos/all';">All Dojos</button>

        <br/>
        <br/>
        <button name="new_dojo" class="btn-inverse" value="New Dojo" onclick="location.href='/dojos/new';">New Dojo</button>
        <button name="new_ninja" class="btn-inverse" value="New Ninja" onclick="location.href='/ninjas/new';">New Ninja</button>

        <br/>
        <br/>
        <br/>
        <br/>
        Message: ${message}
        <br/>

    </div>
</div>

</body>
</html>