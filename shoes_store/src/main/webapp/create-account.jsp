<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manager account</title>
<%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
<%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet" href="assets/bootstrap413/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="assets/datatables/css/dataTables.bootstrap4.min.css">--%>
<%--    <link rel="stylesheet" href="assets/css/style.css">--%>
</head>
<style>
    #back {
        text-decoration: none;
        display: block;
        width: 95px;
        padding: 12px 31px;
        border-radius: 5px;
        background: #11BBD0;
        color: white;
        margin: 20px 0;
    }

    #back:hover {
        background: #11BBF0;
    }

    #btn-add {
        padding: 12px 31px;
        background: #11BBD0;
        border: none;
    }

    #btn-add:hover {
        background: #11BBF0;
    }
    #login_warning{
        background: #1fe6ff;
        color: red;
        font-size: 14px;
        padding: 15px;
        margin: 0 20px 20px;
    }
</style>
<body>
<div style="max-width: 600px" class="container">
    <a id="back" href="?action=manager-account">Back</a>
    <div id="${login_warning}">
        <span>${message}</span>
    </div>
    <form action="?action=create-account" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="text" class="form-control" id="password" name="password">
        </div>
        <div class="form-group">
            <label for="isAdmin">Is Admin</label>
            <select class="form-control" name="isAdmin" id="isAdmin">
                <option value="0">User</option>
                <option value="1">Admin</option>
            </select>
        </div>

        <button id="btn-add" type="submit" class="btn btn-primary">Add</button>
    </form>
</div>
</body>
</html>
