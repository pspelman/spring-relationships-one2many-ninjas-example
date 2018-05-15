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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <%--<link rel="stylesheet" href="../../resources/static/css/style.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/scripts.js"></script>


    <title>Ninjas At Dojo View</title>
</head>
<body>
<div class="container">
    <t:generic_navbar>
            <jsp:attribute name="top_nav">
            </jsp:attribute>
    </t:generic_navbar>

    <div class="foreground">

        <h3>SHOW NINJAS</h3>
        <br/>

        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">
                    First
                </th>
                <th scope="col">
                    Last
                </th>
                <th scope="col">
                    Age
                </th>
                <th scope="col">
                    Action
                </th>
            </tr>
            </thead>
            <tbody>
            <%--for loop can go here, or in the tr tag --%>
            <tr>
                <th scope="row">
                    item.firstName
                </th>
                <td>
                    item.lastName
                </td>
                <td>
                    item.age
                </td>
                <td>
                    <!-- id: item.id -->
                    <!--<button name="delete" class="table-btn btn-danger" style="position: absolute; right: 10%;" (click)="deleteReview(movie_id, review._id)" value="Delete" >Delete this thing</button>-->
                    <%--<button name="delete" class="table-btn btn-danger" style="position: absolute; right: 10%;" (click)="deleteReview(movie_id, review._id)" value="Delete" >remove</button>--%>
                    <button name="delete" class="table-btn btn-danger" value="Delete" href="/ninjas/delete/ninja.id">remove</button>
                </td>
            </tr>
            </tbody>
        </table>



    </div>
</div>

</body>
</html>
