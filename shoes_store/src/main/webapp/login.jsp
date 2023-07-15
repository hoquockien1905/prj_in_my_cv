<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Log in</title>
<%--    <link rel="stylesheet" href="assets/css/style-login.css">--%>
<%--    <link rel="stylesheet"--%>
<%--          href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.min.css">--%>
</head>
<body>
<%--<div class="content">--%>
<%--    <h3 class="welcome">Welcome to Shoe Store! Please Login</h3>--%>
<%--    <div class="auth-form">--%>
<%--        <div class="form_header">--%>
<%--            <h3 class="form_heading">Log in</h3>--%>
<%--            <p class="form_switch-btn"><a href="/home?action=register">Register</a></p>--%>
<%--        </div>--%>
<%--        <div class="${login_warning}">--%>
<%--            <span>${message}</span>--%>
<%--        </div>--%>
<%--        <form action="/home?action=login" method="post">--%>
<%--            <div class="label">--%>
<%--                <p>Username*</p>--%>
<%--                <input type="text" name="username" placeholder="Please enter your username">--%>
<%--            </div>--%>
<%--            <div class="label">--%>
<%--                <p>Password*</p>--%>
<%--                <input type="password" name="password" placeholder="Please enter your password" >--%>
<%--            </div>--%>
<%--            <div class="remember">--%>
<%--                <input type="checkbox" id="checked" class="checkbox" name="remember">--%>
<%--                <label for="checked">Remember username</label>--%>
<%--            </div>--%>
<%--            <div class="login-help">--%>
<%--                <span class="forgot-password"><a href="">Forgot Password?</a></span>--%>
<%--                <span class="help"><a href="">Help</a></span>--%>
<%--            </div>--%>
<%--            <div class="submit">--%>
<%--                <button type="submit">LOG IN</button>--%>
<%--            </div>--%>
<%--        </form>--%>
<%--        <div class="back">--%>
<%--            <button><a href="/">BACK TO HOME</a></button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<div class="content">
    <div class="auth-form">
        <div class="form_header">
            <h3 class="form_heading">Log in</h3>
            <p class="form_switch-btn"><a href="/home?action=register">Register</a></p>
        </div>
        <div class="${login_warning}">
            <span>${message}</span>
        </div>
        <form action="/home?action=login" method="post">
            <div class="label">
                <i id="icon-login" class="fas fa-user"></i>
                <input type="text" name="username" placeholder="username">
            </div>
            <div class="label">
                <i class="fas fa-lock"></i>
                <input id="password" type="password" name="password" placeholder="password">
                <span onclick="see()">
                    <i id="hide1" class="far fa-eye"></i>
                    <i id="hide2" class="far fa-eye-slash"></i>
                </span>
            </div>
            <div class="remember">
                <input type="checkbox" id="checked" class="checkbox" name="remember">
                <label for="checked">Remember username</label>
            </div>
            <div class="login-help">
                <span class="forgot-password"><a href="">Forgot Password?</a></span>
                <span class="help"><a href="">Help</a></span>
            </div>
            <div class="submit">
                <button type="submit">LOG IN</button>
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
</script>
</body>
</html>