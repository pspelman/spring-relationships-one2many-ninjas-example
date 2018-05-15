<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@attribute name="top_nav" fragment="true" %>
<%@attribute name="page_header" fragment="true" %>

<HTML>

<body>
<div class="top_nav">
    <jsp:invoke fragment="top_nav" />
    <button name="all_persons" class="btn-inverse" value="All Persons" onclick="location.href='/persons/all';">All Persons</button>
    <button name="new" class="btn-inverse" value="Add New" onclick="location.href='/licenses/new';">Add License</button>
    <button name="new_person" class="btn-inverse" value="New Person" onclick="location.href='/persons/new';">New Person</button>
</div>
</body>
</HTML>