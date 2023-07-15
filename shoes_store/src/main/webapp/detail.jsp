<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail</title>
<%--    <link rel="stylesheet" href="assets/fontawesome-free-6.0.0-beta2-web/fontawesome-free-6.0.0-beta2-web/css/all.css">--%>
<%--    <link rel="stylesheet" href="assets/bootstrap-5.1.1-dist/bootstrap-5.1.1-dist/css/bootstrap-grid.rtl.css">--%>
<%--    <link rel="stylesheet" href="assets/css/style.css">--%>
</head>
<body>
<div class="container-fluid main">
    <jsp:include page="header.jsp"></jsp:include>
    <c:if test="${account != null}">
        <div class="row banner-after-login" style="padding-top: 37px">
            <div class="col-12">
                <div class="row">
                    <div class="col-12 banner-name">
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
        <div class="row banner">
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
                                        <a class="${tag == category.id ? "active" : ""}"
                                           href="?action=category&id=${category.id}">
                                                ${category.name}
                                        </a>
                                    </li>
                                </c:forEach>
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
                                    <p class="last_product-current-price-sale">$${productSale.oldPrice}</p>
                                    <p class="last_product-old-price">$${productSale.currentPrice}</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-10">
                <div class="container-product">
                    <div class="row">
                        <div class="row detail-container">
                            <div class="col-8">
                                <div class="img-product"
                                     style="background-image: url(${product.image})"></div>
                            </div>
                            <div class="col-4 detail-info">
                                <h2>${product.title}</h2>
                                <fieldset>
                                    <legend>
                                        Description:
                                    </legend>
                                    <p>${product.description}</p>
                                </fieldset>
                                <div class="detail-price">
                                    <span class="detail-old-price">$${product.oldPrice}</span>
                                    <span class="detail-current-price">$${product.currentPrice}</span>
                                </div>
                                <div class="detail-quantity">
                                    <span>Quantity</span>
                                    <div>
                                        <input style="padding: 0 0;width: 34px;" onclick="decr()" id="decr" value="-">
                                        <input id="num" type="number" value="1" min="1" readonly>
                                        <input style="padding: 0 0;width: 34px;" onclick="incr()" id="incr" value="+">
                                    </div>
                                </div>
                                <div class="detail-btn-buy">
                                    <button class="detail-add-to-cart">
                                        <c:if test="${(account.isAdmin == 1)}">
                                            <a href="#">Update</a>
                                        </c:if>
                                        <c:if test="${!(account.isAdmin == 1)}">
                                            <a href="#">Add to cart</a>
                                        </c:if>
                                    </button>
                                    <button class="detail-buy">
                                        <c:if test="${(account.isAdmin == 1)}">
                                            <a href="#">Delete</a>
                                        </c:if>
                                        <c:if test="${!(account.isAdmin == 1)}">
                                            <a href="#">Buy now</a>
                                        </c:if>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>
