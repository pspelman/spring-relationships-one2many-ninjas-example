<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>New Ninja Form</title>
</head>
<body>
<div class="container">
    <t:generic_navbar>
            <jsp:attribute name="top_nav">
            </jsp:attribute>
    </t:generic_navbar>

    <div class="foreground">

        <%--<h3>Add a ninja</h3>--%>
        <%--<br/>--%>
        <%--<form:form method="POST" action="/ninjas/new" modelAttribute="ninja">--%>
            <%--<form:select path="dojo">--%>
                <%--<c:forEach items="${dojos}" var="dojo">--%>
                    <%--<form:option value="${dojo}" >--%>
                        <%--<c:out value="${dojo.getName()}" />--%>
                    <%--</form:option>--%>
                <%--</c:forEach>--%>
            <%--</form:select>--%>
            <%--<form:input path="firstName" />--%>
            <%--<form:input path="lastName" />--%>
            <%--<form:input path="age" />--%>
            <%--&lt;%&ndash;<form:hidden path="dojo" />&ndash;%&gt;--%>
            <%--<input type="submit"/>--%>
        <%--</form:form>--%>

        <form:form method="POST" action="/ninjas/new" modelAttribute="ninja" cssClass="user_form">

        <%--TODO: Generate dropdown of existing dojos on which a ninja can be added--%>

            <%--<form:hidden path="dojo"/>--%>

            <%--<spring:bind path="dojo">--%>
                <%--<div class="form-group">--%>
                    <%--<label for="dojo" class="col-sm-2 control-label">Dojo</label>--%>
                    <%--<div class="col-sm-10">--%>
                        <%--<form:errors path="dojo" class="control-label" />--%>
                        <%--<form:select id="dojo" path="dojo" title="Dojo" >--%>
                            <%--<form:option value="">&nbsp;</form:option>--%>
                            <%--<form:options items="${dojoList}" />--%>
                        <%--</form:select>--%>
                        <%--<p class="help-block mb-0">Select a dojo</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</spring:bind>--%>


            <form:label path="dojo">Dojo location</form:label>
            <%--<form:input path="dojo" value="${dojo.name}" />--%>
            <form:select path="dojo" items="${dojos}" itemLabel="name" ></form:select>

            <%--<form:label path="name">Name</form:label>--%>
            <%--<form:input path="name" /><br/>--%>
            <%--<form:errors path="name" cssClass="error" />--%>
            <br/>

            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" /><br/>
            <form:errors path="firstName" cssClass="alert-danger" />

            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName" /><br/>
            <form:errors path="lastName" cssClass="alert-danger" />

            <form:label path="age">Age</form:label>
            <form:input path="age" /><br/>
            <form:errors path="age" cssClass="alert-danger" />
            <br/>

            <%--<form:label path="state"> State--%>
                <%--&lt;%&ndash;<br/>&ndash;%&gt;--%>
                <%--<form:errors path="state" cssClass="error"/>--%>
                <%--<br/>--%>
                <%--<form:input path="state"/>--%>
            <%--</form:label>--%>

            <%--<form:label path="expirationDate"> Expiration Date--%>
                <%--&lt;%&ndash;<br/>&ndash;%&gt;--%>
                <%--<form:errors path="expirationDate" cssClass="error"/>--%>
                <%--<br/>--%>
                <%--<form:input path="expirationDate" id="datepicker"/>--%>
            <%--</form:label>--%>

            <input type="submit">

        </form:form>
    </div>
</div>

</body>
</html>
