<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shoe Store</title>
<%--    <link rel="icon" href="assets/images/icon-title.jpg" type="image/x-icon"/>--%>
    <%--    <link rel="stylesheet" href="assets/css/style.css" type="text/css">--%>
    <%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
    <%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
</head>
<body>
<div class="container-fluid main">
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="banner.jsp"></jsp:include>
    <div id="product" class="content">
        <div class="row products">
            <h3>Products</h3>
            <div class="col-2">
                <div class="row">
                    <div class="col-12">
                        <div class="category">
                            <div class="category-header">
                                <i class="fas fa-bars"></i>
                                <h4>Category</h4>
                            </div>
                            <ul class="category-list">
                                <c:forEach var="category" items="${listCategory}">
                                    <li class="category-item">
                                        <c:if test="${(account.isAdmin == 1)}">
                                            <a class="${tag == category.id ? "active" : ""}"
                                               href="?action=category&id=${category.id}">
                                                    ${category.name}
                                                <div class="update-category">
                                                    <a class="edit" href="?action=deleteCategory&id=${category.id}">Delete</a>
                                                </div>
                                            </a>
                                        </c:if>
                                        <c:if test="${!(account.isAdmin == 1)}">
                                            <a class="${tag == category.id ? "active" : ""}"
                                               href="?action=category&id=${category.id}">
                                                    ${category.name}
                                            </a>
                                        </c:if>
                                    </li>
                                </c:forEach>
                                <c:if test="${(account.isAdmin == 1)}">
                                    <li class="category-item">
                                        <form action="?action=createCategory" method="post" class="add-category">
                                            <div>
                                                <input type="text" name="newCategory">
                                            </div>
                                            <button type="submit">Add</button>
                                        </form>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                        <div>
                            <a href="?action=detail&id=${lastProduct.id}" class="last_product">
                                <div class="last_product-heading">
                                    <h4>Last product</h4>
                                </div>
                                <div class="last_product-img" style="background-image: url(${lastProduct.image})"></div>
                                <div class="last_product-info">
                                    <h4>${lastProduct.title}</h4>
                                    <p class="last_product-old-price">$${lastProduct.oldPrice}</p>
                                    <p class="last_product-current-price">$${lastProduct.currentPrice}</p>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="?action=detail&id=${productSale.id}" class="last_product">
                                <div class="last_product-heading">
                                    <h4>Products on sale</h4>
                                </div>
                                <div class="last_product-img" style="background-image: url(${productSale.image})"></div>
                                <div class="last_product-info-last">
                                    <h4>${productSale.title}</h4>
                                    <p class="last_product-current-price-sale">$${productSale.currentPrice}</p>
                                    <p class="last_product-old-price">$${productSale.oldPrice}</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <div class="container-product">
                    <div style="justify-content: flex-end" class="row">
                        <div class="col-7">
                            <div class="search-container">
                                <input type="text" oninput="search(this)" name="txt" placeholder="Search..."
                                       class="search-input">
                                <i style="color: #11BBD0;" class="fas fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <div id="contentProduct" class="row">
                        <c:if test="${(account.isAdmin == 1)}">
                            <div class="col-2">
                                <a class="add-product" href="?action=create-product">
                                    <p>+</p>
                                    <div><h4>Add a new product</h4></div>
                                </a>
                            </div>
                        </c:if>
                        <c:forEach items="${listProduct}" var="p">
                            <div class="load-product col-2">
                                <a href="?action=detail&id=${p.id}">
                                    <div class="product-item">
                                        <div style="background-image: url(${p.image})"
                                             class="product-img">
                                        </div>
                                        <div class="product-item-info">
                                            <h4>${p.title}</h4>
                                            <div class="product-price">
                                                <span class="product-price-old">$${p.oldPrice}</span>
                                                <span class="product-price-current">$${p.currentPrice}</span>
                                            </div>
                                            <c:if test="${(account.isAdmin == 1)}">
                                                <div style="height: 30px;" class="product-buy"></div>
                                            </c:if>
                                            <div class="product-buy">
                                                    <%--                                                <c:if test="${!(account.isAdmin == 1)}">--%>
                                                    <%--                                                    <button class="add-to-cart">--%>
                                                    <%--                                                        <a href="?action=login">--%>
                                                    <%--                                                            Add to cart--%>
                                                    <%--                                                        </a>--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                    <button class="buy">--%>
                                                    <%--                                                        <a href="?action=login">--%>
                                                    <%--                                                            Buy--%>
                                                    <%--                                                        </a>--%>
                                                    <%--                                                    </button>--%>
                                                    <%--                                                </c:if>--%>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="row container_btn-load">
                    <c:if test="${!(account.isAdmin == 1)}">
                        <button id="btn-load-more" class="btn_load-product" onclick="loadMore()">Load More</button>
                    </c:if>
                    <c:if test="${(account.isAdmin == 1)}">
                        <button id="btn-load-more" class="btn_load-product" onclick="loadMoreByAdmin()">Load More
                        </button>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

    function loadMore() {
        var amount = document.getElementsByClassName("load-product").length;
        $.ajax({
            url: "?action=load-more",
            type: "GET",
            data: {
                exists: amount
            },
            success: function (data) {
                var row = document.getElementById("contentProduct");
                row.innerHTML += data;
            },
            error: function (xhr) {

            }
        });
    }

    function loadMoreByAdmin() {
        var amount = document.getElementsByClassName("load-product").length;
        $.ajax({
            url: "?action=load-more-by-admin",
            type: "GET",
            data: {
                exists: amount
            },
            success: function (data) {
                var row = document.getElementById("contentProduct");
                row.innerHTML += data;
            },
            error: function (xhr) {

            }
        });
    }

    function search(param) {
        var name = param.value;
        $.ajax({
            url: "/?action=search",
            type: "GET",
            data: {
                txt: name
            },
            success: function (data) {
                var row = document.getElementById("contentProduct");
                row.innerHTML = data;
            },
            error: function (xhr) {

            }
        });
    }
</script>
</body>
</html>