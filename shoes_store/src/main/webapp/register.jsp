<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
<%--    <link rel="stylesheet" href="assets/css/style-login.css">--%>
<%--    <link rel="stylesheet" href="bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet"--%>
<%--          href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.min.css">--%>
</head>
<body>
<%--<div class="content register">--%>
<%--    <h3 class="welcome">Welcome to Shoe Store! Please Register</h3>--%>
<%--    <div class="auth-form">--%>
<%--        <div class="form_header">--%>
<%--            <h3 class="form_heading">Register</h3>--%>
<%--            <p class="form_switch-btn"><a href="/home?action=login">Log in</a></p>--%>
<%--        </div>--%>
<%--        <div class="${login_warning}">--%>
<%--            <span>${message}</span>--%>
<%--        </div>--%>
<%--        <form action="/home?action=register" method="post">--%>
<%--            <div class="label">--%>
<%--                <p>Username</p>--%>
<%--                <input type="text" name="username" placeholder="Please enter your username">--%>
<%--            </div>--%>
<%--            <div class="label">--%>
<%--                <p>Password</p>--%>
<%--                <input type="password" name="password" placeholder="Please enter your password">--%>
<%--            </div>--%>
<%--            <div class="label">--%>
<%--                <p>Confirm password</p>--%>
<%--                <input type="password" name="confirmPassword" placeholder="Please confirm your password">--%>
<%--            </div>--%>
<%--            <div class="label">--%>
<%--                <input id="checked" class="checkbox" type="checkbox">--%>
<%--                <label for="checked" class="checkbox-message"> I'd like to receive exclusive offers and promotions via--%>
<%--                    SMS</label>--%>
<%--            </div>--%>
<%--            <div class="submit">--%>
<%--                <button type="submit">SIGN UP</button>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--        <div class="back">--%>
<%--            <button><a href="/">BACK TO HOME</a></button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<div class="content register">
    <div class="auth-form">
        <div class="form_header">
            <p class="form_switch-btn"><a href="/home?action=login">Log in</a></p>
            <h3 class="form_heading">Register</h3>
        </div>
        <div class="${login_warning}">
            <span>${message}</span>
        </div>
        <form action="/home?action=register" method="post">
            <div class="label">
                <i class="fas fa-user"></i>
                <input type="text" name="username" placeholder="username">
                <c:if test="${errUsername != null}">
                    <p>${errUsername}</p>
                </c:if>
            </div>
            <div class="label">
                <i class="fas fa-lock"></i>
                <input id="password" type="password" name="password" placeholder="password">
                <span onclick="see()">
                    <i id="hide1" class="far fa-eye"></i>
                    <i id="hide2" class="far fa-eye-slash"></i>
                </span>
            </div>
            <div class="label">
                <i class="fas fa-lock"></i>
                <input id="confirm" type="password" name="password" placeholder="confirm password">
                <span onclick="seeConfirm()">
                    <i id="confirmHide1" class="far fa-eye"></i>
                    <i id="confirmHide2" class="far fa-eye-slash"></i>
                </span>
            </div>
            <div class="label checkbox-container">
                <input id="checkbox" class="checkbox" type="checkbox" required>
                <label for="checkbox" class="checkbox-message"> I'd like to receive exclusive offers and promotions via
                    SMS</label>
            </div>
            <div class="submit">
                <button type="submit">SIGN UP</button>
            </div>
        </form>
        <div class="back">
            <button><a href="/">BACK TO HOME</a></button>
        </div>
    </div>
</div>
<script>
    function see() {
        var x = document.getElementById("password");
        var y = document.getElementById("hide1");
        var z = document.getElementById("hide2");
        if (x.type === "password") {
            x.type = "text";
            y.style.display = "block";
            z.style.display = "none";
        } else {
            x.type = "password";
            y.style.display = "none";
            z.style.display = "block";
        }
    }
    function seeConfirm() {
        var x = document.getElementById("confirm");
        var y = document.getElementById("confirmHide1");
        var z = document.getElementById("confirmHide2");
        if (x.type === "password") {
            x.type = "text";
            y.style.display = "block";
            z.style.display = "none";
        } else {
            x.type = "password";
            y.style.display = "none";
            z.style.display = "block";
        }
    }
</script>
</body>
</html>