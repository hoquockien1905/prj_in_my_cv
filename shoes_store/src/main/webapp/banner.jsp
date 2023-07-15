<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${account != null}">
    <div id="home" class="row banner-after-login">
        <div class="col-12">
            <div class="row">
                <div style="margin-top: 20px" class="col-12 banner-name">
                    <a href="/">
                        <span class="banner-main-name">Shoe</span><span>Store</span>
                        <p>Online Shoe Store</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${account == null}">
    <div id="home" class="row banner">
        <div class="col-12">
            <div class="row">
                <div class="col-12 banner-name">
                    <a href="/">
                        <span class="banner-main-name">Shoe</span><span>Store</span>
                        <p>Online Shoe Store</p>
                    </a>
                </div>
            </div>
            <img src="assets/images/banner.png" alt="Banner">
        </div>
    </div>
</c:if>
</body>
</html>
