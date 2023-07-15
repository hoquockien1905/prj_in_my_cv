<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manager account</title>
<%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
<%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet" href="/assets/bootstrap413/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="/assets/datatables/css/dataTables.bootstrap4.min.css">--%>
<%--    <link rel="stylesheet" href="assets/css/style.css">--%>
</head>
<style>
    #add-new-account {
        padding: 13px 17px;
        background: #11BBD0;
        color: white;
        border-radius: 5px;
        text-decoration: none;
        position: relative;
        bottom: 11px;
    }

    #add-new-account:hover {
        background: #11BBF0;
        position: relative;
        bottom: 11px;
    }
</style>
<body style="background: linear-gradient(180deg, #11BBD0, transparent, #11BBD0)">
<header class="row">
    <div class="col-12">
        <div style="position: relative; top: -4px;" class="logo">
            <div class="logo-name">
                <a style="text-decoration: none" href="/">
                    <span class="name">Shoe</span><span>Store</span>
                </a>
            </div>
        </div>
        <c:if test="${account != null}">
            <ul class="nav">
                <li><a style="text-decoration: none" href="/"><i class="fas fa-home"></i>Home</a></li>
                <li><a style="text-decoration: none" href="?action=manager-product">Manager Product</a></li>
                <c:if test="${(account.isAdmin == 1)}">
                    <li><a style="text-decoration: none" href="?action=manager-account">Manager Account</a></li>
                </c:if>
                <li><a style="font-weight: bold; text-decoration: none" href="#">
                    <i class="fas fa-user-circle avatar-user"></i>
                        ${account.username}</a></li>
                <c:if test="${!(account.isAdmin == 1)}">
                    <li>
                        <a href="/">
                            <i class="fas fa-shopping-cart cart-icon"></i>
                            <span class="notice">15</span>
                        </a>
                    </li>
                </c:if>
                <li><a style="text-decoration: none" href="/home?action=logout"><i class="fas fa-sign-out-alt"></i>Log
                    out</a></li>
            </ul>
        </c:if>
    </div>
</header>
<div style="margin-top: 120px; background: white;" class="container">
    <table style="text-align: center" id="product" class="table table-striped">
        <thead>
        <tr style="color: #11BBD0">
            <th scope="col">ID</th>
            <th scope="col">Username</th>
            <th scope="col">Password</th>
            <th scope="col">Is Admin</th>
            <th scope="col">Update</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="account" items="${listAccount}">
            <tr>
                <td>${account.id}</td>
                <td>${account.username}</td>
                <td>${account.password}</td>
                <td>${(account.isAdmin == 1) ? true : false}</td>
                <td>
                    <a href="?action=update-account&id=${account.id}" type="button" class="btn btn-warning">
                        Update
                    </a>
                </td>
                <td>
                    <c:if test="${account.username == 'admin'}">
                        <button type="button" class="btn btn-danger" onclick="setValueForm('${account.id}')"
                                data-toggle="modal" data-target="#deleteModal" disabled>
                            Delete
                        </button>
                    </c:if>
                    <c:if test="${!(account.username == 'admin')}">
                        <button type="button" class="btn btn-danger" onclick="setValueForm('${account.id}')"
                                data-toggle="modal" data-target="#deleteModal">
                            Delete
                        </button>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <a id="add-new-account" href="?action=create-account">
        Add a new Account
    </a>

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="?action=delete-account" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Are you sure?</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input name="id" id="id" hidden>
                    </div>
                    <div class="modal-footer">
                        <button type="button" style="background-color: #11BBD0" class="btn btn-secondary"
                                data-dismiss="modal">Close
                        </button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <script src="/assets/jquery/jquery-3.5.1.min.js"></script>
    <script src="/assets/bootstrap413/js/popper.min.js"></script>
    <script src="/assets/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/assets/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="/assets/bootstrap413/js/bootstrap.min.js"></script>
    <script src="/assets/bootstrap413/js/bootstrap.bundle.js"></script>
    <script>
        $(document).ready(function () {
            $("#product").dataTable({
                "dom": "lrtip",
                "lengthChange": false,
                "pageLength": 5
            })
        })
    </script>
    <script>
        function setValueForm(id) {
            document.getElementById("id").value = id;
        }
    </script>
</div>
</body>
</html>
