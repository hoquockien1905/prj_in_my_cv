<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create product</title>
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
        width: 160px;
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
        margin-bottom: 30px;
    }

    #btn-add:hover {
        background: #11BBF0;
    }
</style>
<body>
<div style="max-width: 600px" class="container">
    <a id="back" href="/">Back to home</a>
    <form action="?action=createProduct" method="post">
        <div class="form-group">
            <label for="nameProduct">Name product:</label>
            <input type="text" class="form-control" id="nameProduct" name="nameProduct">
        </div>
        <div class="form-group">
            <label for="oldPrice">Old price:</label>
            <input type="text" class="form-control" id="oldPrice" name="oldPrice">
        </div>
        <div class="form-group">
            <label for="currentPrice">Current price:</label>
            <input type="text" class="form-control" id="currentPrice" name="currentPrice">
        </div>
        <div class="form-group">
            <label for="descriptionProduct">Description:</label>
            <textarea name="descriptionProduct" id="descriptionProduct" class="form-control" cols="30"
                      rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="imageProduct">Link image:</label>
            <textarea name="imageProduct" id="imageProduct" class="form-control" cols="30" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="idCategory">Category</label>
            <select class="form-control" name="idCategory" id="idCategory">
                <c:forEach items="${chooseCategory}" var="category">
                    <option value="${category.id}">${category.name}</option>
                </c:forEach>
            </select>
        </div>

        <button id="btn-add" type="submit" class="btn btn-primary">Add</button>
    </form>
    <script src="/assets/jquery/jquery-3.5.1.min.js"></script>
    <script src="/assets/bootstrap413/js/popper.min.js"></script>
    <script src="/assets/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/assets/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="/assets/bootstrap413/js/bootstrap.min.js"></script>
    <script src="/assets/bootstrap413/js/bootstrap.bundle.js"></script>
</div>
</body>
</html>
