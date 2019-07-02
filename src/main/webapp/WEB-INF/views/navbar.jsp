<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${contextPath}/index">TodoList</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a onclick="console.log(${pageContext.request.userPrincipal.name})" href="${contextPath}/index">Home</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <c:choose>
                <c:when test="${pageContext.request.userPrincipal.name != null}">
                    <li><a onclick="document.forms['logoutForm'].submit()" href="${contextPath}/login?logout"><span class="fa fa-log-out"></span> Logout</a></li>
                    </c:when>
                <c:otherwise>
                    <li><a data-toggle="modal" href="#signup"><span class="fa fa-user"></span> Sign Up</a></li>
                    <li><a data-toggle="modal" href="#login"><span class="fa fa-log-in"></span> Login</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</nav>

