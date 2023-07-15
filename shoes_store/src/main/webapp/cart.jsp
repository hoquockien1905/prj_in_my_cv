<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
<%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
<%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet" href="/assets/bootstrap413/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="/assets/datatables/css/dataTables.bootstrap4.min.css">--%>
<%--    <link rel="stylesheet" href="assets/css/style.css">--%>
</head>
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
                <li><a style="text-decoration: none" href="/#product">Product</a></li>

<%--                <c:if test="${!(account.isAdmin == 1)}">--%>
<%--                </c:if>--%>
<%--                <c:if test="${(account.isAdmin == 1)}">--%>
<%--                    <li><a href="?action=manager-product">Manager Product</a></li>--%>
<%--                    <li><a href="?action=manager-account">Manager Account</a></li>--%>
<%--                </c:if>--%>
                <li><a style="font-weight: bold; text-decoration: none" href="#">
                    <i class="fas fa-user-circle avatar-user"></i>
                        ${account.username}</a></li>
                <c:if test="${!(account.isAdmin == 1)}">
                    <li>
                        <a href="cart.jsp">
                            <i class="fas fa-shopping-cart cart-icon"></i>
                            <span style="right: 133px;" class="notice">15</span>
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
            <th scope="col">Product</th>
            <th scope="col">Name</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Amount</th>
            <th scope="col">Delete</th>
        </tr>
        </thead>
        <tbody>
        <%--        <c:forEach var="account" items="${listAccount}">--%>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button type="button" class="btn btn-danger" onclick="setValueForm('${account.id}')"
                        data-toggle="modal" data-target="#deleteModal">
                    Delete
                </button>
            </td>
        </tr>
        <%--        </c:forEach>--%>
        </tbody>
    </table>

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
