<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
<%--    <link rel="stylesheet" href="assets/css/style.css">--%>
</head>
<body>
<header class="row">
    <div class="col-12">
        <div class="logo">
            <div class="logo-name">
                <a href="/">
                    <span class="name">Shoe</span><span>Store</span>
                </a>
            </div>
        </div>
        <c:if test="${account != null}">
            <ul class="nav">
                <li><a href="/"><i class="fas fa-home"></i>Home</a></li>
                <c:if test="${!(account.isAdmin == 1)}">
                    <li><a href="#product">Product</a></li>
                </c:if>
                <c:if test="${(account.isAdmin == 1)}">
                    <li><a href="?action=manager-product">Manager Product</a></li>
                    <li><a href="?action=manager-account">Manager Account</a></li>
                </c:if>
                <li><a style="font-weight: bold" href="#">
                    <i class="fas fa-user-circle avatar-user"></i>
                        ${account.username}</a></li>
                <c:if test="${!(account.isAdmin == 1)}">
                    <li>
                        <a href="cart.jsp">
                            <i class="fas fa-shopping-cart cart-icon"></i>
                            <span class="notice">15</span>
                        </a>
                    </li>
                </c:if>
                <li><a href="/home?action=logout"><i class="fas fa-sign-out-alt"></i>Log out</a></li>
            </ul>
        </c:if>
        <c:if test="${account == null}">
            <ul class="nav">
                <li><a href="#home"><i class="fas fa-home"></i>Home</a></li>
                <li><a href="#product">Product</a></li>
                <li><a href="?action=login"><i class="fas fa-sign-in-alt"></i>Log in</a></li>
            </ul>
        </c:if>
    </div>
</header>
</body>
</html>
