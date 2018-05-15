<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="top_nav" fragment="true" %>
<%@attribute name="page_header" fragment="true" %>

<HTML>

<body>
<div class="top_nav">
    <jsp:invoke fragment="top_nav" />
    <button name="dojo_list" class="btn-inverse" value="Dojo List" onclick="location.href='/dojos/all';">All Dojos</button>
    <%--<button name="ninja_list" class="btn-inverse" value="All Ninjas" onclick="location.href='/ninjas/all';">All Ninjas</button>--%>
    <button name="new_person" class="btn-inverse" value="New Dojo" onclick="location.href='/dojos/new';">New Dojo</button>
    <button name="new_person" class="btn-inverse" value="New Ninja" onclick="location.href='/ninjas/new';">New Ninja</button>
</div>
</body>
</HTML>