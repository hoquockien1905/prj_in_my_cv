package controller;

import model.bean.Account;
import model.bean.Category;
import model.bean.Product;
import model.service.IService;
import model.service.impl.ServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns = {"/home", ""})
public class HomeControl extends HttpServlet {
    private IService service = new ServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                showFormLogin(req, resp);
                break;
            case "logout":
                logOut(req, resp);
                break;
            case "register":
                showFormRegister(req, resp);
                break;
            case "category":
                showListProductByCategoryId(req, resp);
                break;
            case "detail":
                showDetailProduct(req, resp);
                break;
            case "manager-account":
                managerAccount(req, resp);
                break;
            case "load-more":
                loadMoreProduct(req, resp);
                break;
            case "load-more-by-admin":
                loadMoreProductByAdmin(req, resp);
                break;
            case "search":
                searchByAjax(req, resp);
                break;
            case "deleteCategory":
                deleteCategory(req, resp);
                break;
            case "create-account":
                showFormCreateAccount(req, resp);
                break;
            case "manager-product":
                managerProduct(req, resp);
                break;
            case "create-product":
                showFromCreateProduct(req, resp);
                break;
            case "update-account":
                showFormUpdateAccount(req, resp);
                break;
            case "update-product":
                showFormUpdateProduct(req, resp);
                break;
            default:
                showListProduct(req, resp);
        }
    }

    private void showFormUpdateProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        List<Category> chooseCategory = this.service.findAllCategory();


        Product product = this.service.findById(id);

        req.setAttribute("product", product);
        req.setAttribute("chooseCategory", chooseCategory);
        try {
            req.getRequestDispatcher("update-product.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = this.service.findById(id);
        if (product != null) {
            this.service.deleteProduct(id);
        }
        try {
            resp.sendRedirect("?action=manager-product");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormUpdateAccount(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Account account = this.service.findAccountId(id);

        req.setAttribute("account", account);

        try {
            req.getRequestDispatcher("update-account.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void managerProduct(HttpServletRequest req, HttpServletResponse resp) {
        List<Product> listProduct = this.service.findAll();

        req.setAttribute("listProduct", listProduct);

        try {
            req.getRequestDispatcher("manager-product.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFromCreateProduct(HttpServletRequest req, HttpServletResponse resp) {
        List<Category> categoryList = this.service.findAllCategory();

        req.setAttribute("chooseCategory", categoryList);
        try {
            req.getRequestDispatcher("create-product.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreateAccount(HttpServletRequest req, HttpServletResponse resp) {
        Account account = new Account();
        req.setAttribute("isAdmin", account);

        try {
            req.getRequestDispatcher("create-account.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteAccount(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Account account = this.service.findAccountId(id);
        if (account != null) {
            this.service.deleteAccount(id);
        }
        try {
            resp.sendRedirect("/?action=manager-account");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void searchByAjax(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("txt");
        List<Product> list = this.service.searchNameByAjax(name);
        Account account = (Account) req.getSession().getAttribute("account");


        PrintWriter writer = null;
        try {
            writer = resp.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (account == null) {
            for (Product product : list) {
                writer.println("<div class=\"load-product col-2\">\n" +
                        "                                <a href=\"?action=detail&id=" + product.getId() + "\">\n" +
                        "                                    <div class=\"product-item\">\n" +
                        "                                        <div style=\"background-image: url(" + product.getImage() + ")\"\n" +
                        "                                             class=\"product-img\">\n" +
                        "                                        </div>\n" +
                        "                                        <div class=\"product-item-info\">\n" +
                        "                                            <h4>" + product.getTitle() + "</h4>\n" +
                        "                                            <div class=\"product-price\">\n" +
                        "                                                <span class=\"product-price-old\">$" + product.getOldPrice() + "</span>\n" +
                        "                                                <span class=\"product-price-current\">$" + product.getCurrentPrice() + "</span>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"product-buy\">\n" +
                        "                                                <button class=\"add-to-cart\"><a href=\"?action=login\">Add\n" +
                        "                                                    to\n" +
                        "                                                    cart</a></button>\n" +
                        "                                                <button class=\"buy\"><a href=\"?action=login\">Buy</a>\n" +
                        "                                                </button>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                </a>\n" +
                        "                            </div>");
            }
        } else {
            for (Product product : list) {
                writer.println("<div class=\"load-product col-2\">\n" +
                        "                                <a href=\"?action=detail&id=" + product.getId() + "\">\n" +
                        "                                    <div class=\"product-item\">\n" +
                        "                                        <div style=\"background-image: url(" + product.getImage() + ")\"\n" +
                        "                                             class=\"product-img\">\n" +
                        "                                        </div>\n" +
                        "                                        <div class=\"product-item-info\">\n" +
                        "                                            <h4>" + product.getTitle() + "</h4>\n" +
                        "                                            <div class=\"product-price\">\n" +
                        "                                                <span class=\"product-price-old\">$" + product.getOldPrice() + "</span>\n" +
                        "                                                <span class=\"product-price-current\">$" + product.getCurrentPrice() + "</span>\n" +
                        "                                            </div>\n" +
                        "                                            <div style=\"height: 30px;\" class=\"product-buy\">\n" +
//                        "                                                <button class=\"add-to-cart\"><a href=\"?action=login\">Update</a></button>\n" +
//                        "                                                <button class=\"buy\"><a href=\"?action=login\">Delete</a>\n" +
                        "                                                </button>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                </a>\n" +
                        "                            </div>");
            }
        }
    }

    private void loadMoreProductByAdmin(HttpServletRequest req, HttpServletResponse resp) {
        int amount = Integer.parseInt(req.getParameter("exists"));
        Account account = (Account) req.getSession().getAttribute("account");
        List<Product> list = this.service.getProductNextLimit10(amount);

        try {
            PrintWriter writer = resp.getWriter();
            for (Product product : list) {
                writer.println("<div class=\"load-product col-2\">\n" +
                        "                                <a href=\"?action=detail&id=" + product.getId() + "\">\n" +
                        "                                    <div class=\"product-item\">\n" +
                        "                                        <div style=\"background-image: url(" + product.getImage() + ")\"\n" +
                        "                                             class=\"product-img\">\n" +
                        "                                        </div>\n" +
                        "                                        <div class=\"product-item-info\">\n" +
                        "                                            <h4>" + product.getTitle() + "</h4>\n" +
                        "                                            <div class=\"product-price\">\n" +
                        "                                                <span class=\"product-price-old\">$" + product.getOldPrice() + "</span>\n" +
                        "                                                <span class=\"product-price-current\">$" + product.getCurrentPrice() + "</span>\n" +
                        "                                            </div>\n" +
                        "                                            <div style=\"height: 30px;\" class=\"product-buy\">\n" +
//                            "                                                <button class=\"add-to-cart\"><a href=\"?action=login\">Update</a></button>\n" +
//                            "                                                <button class=\"buy\"><a href=\"?action=login\">Delete</a>\n" +
                        "                                                </button>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                </a>\n" +
                        "                            </div>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void loadMoreProduct(HttpServletRequest req, HttpServletResponse resp) {
        int amount = Integer.parseInt(req.getParameter("exists"));
        List<Product> list = this.service.getProductNextLimit10(amount);


        try {
            PrintWriter writer = resp.getWriter();
            for (Product product : list) {
                writer.println("<div class=\"load-product col-2\">\n" +
                        "                                <a href=\"?action=detail&id=" + product.getId() + "\">\n" +
                        "                                    <div class=\"product-item\">\n" +
                        "                                        <div style=\"background-image: url(" + product.getImage() + ")\"\n" +
                        "                                             class=\"product-img\">\n" +
                        "                                        </div>\n" +
                        "                                        <div class=\"product-item-info\">\n" +
                        "                                            <h4>" + product.getTitle() + "</h4>\n" +
                        "                                            <div class=\"product-price\">\n" +
                        "                                                <span class=\"product-price-old\">$" + product.getOldPrice() + "</span>\n" +
                        "                                                <span class=\"product-price-current\">$" + product.getCurrentPrice() + "</span>\n" +
                        "                                            </div>\n" +
                        "                                            <div class=\"product-buy\">\n" +
//                        "                                                <button class=\"add-to-cart\"><a href=\"?action=login\">Add\n" +
//                        "                                                    to\n" +
//                        "                                                    cart</a></button>\n" +
//                        "                                                <button class=\"buy\"><a href=\"?action=login\">Buy</a>\n" +
//                        "                                                </button>\n" +
                        "                                            </div>\n" +
                        "                                        </div>\n" +
                        "                                    </div>\n" +
                        "                                </a>\n" +
                        "                            </div>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void managerAccount(HttpServletRequest req, HttpServletResponse resp) {
        List<Account> listAccount = this.service.findAllAccount();

        req.setAttribute("listAccount", listAccount);
        try {
            req.getRequestDispatcher("manager-account.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void logOut(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();
        session.removeAttribute("account");
        try {
            resp.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDetailProduct(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));

        List<Product> listProductByCategory = this.service.findProductByCategoryId(id);
        List<Category> listCategory = this.service.getAllCategory();
        Product product = this.service.findById(id);
        Product lastProduct = this.service.lastProduct();
        Product productSale = this.service.productSale();

        req.setAttribute("productSale", productSale);
        req.setAttribute("lastProduct", lastProduct);
        req.setAttribute("listProduct", listProductByCategory);
        req.setAttribute("listCategory", listCategory);
        req.setAttribute("tag", id);
        req.setAttribute("product", product);

        try {
            req.getRequestDispatcher("detail.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListProductByCategoryId(HttpServletRequest req, HttpServletResponse resp) {

        int id = Integer.parseInt(req.getParameter("id"));

        List<Product> listProductByCategory = this.service.findProductByCategoryId(id);
        List<Category> listCategory = this.service.getAllCategory();
        Product lastProduct = this.service.lastProduct();
        Product productSale = this.service.productSale();

        req.setAttribute("productSale", productSale);
        req.setAttribute("lastProduct", lastProduct);
        req.setAttribute("listProduct", listProductByCategory);
        req.setAttribute("listCategory", listCategory);
        req.setAttribute("tag", id);

        try {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        }
    }

    private void showFormRegister(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormLogin(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListProduct(HttpServletRequest req, HttpServletResponse resp) {

        List<Product> listProduct = this.service.getProductLimit10();
        List<Category> listCategory = this.service.getAllCategory();
        Product lastProduct = this.service.lastProduct();
        Product productSale = this.service.productSale();

        req.setAttribute("productSale", productSale);
        req.setAttribute("lastProduct", lastProduct);
        req.setAttribute("listProduct", listProduct);
        req.setAttribute("listCategory", listCategory);
        try {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String action = req.getParameter("action");
        switch (action) {
            case "login":
                loginAccount(req, resp);
                break;
            case "register":
                signUpAccount(req, resp);
                break;
            case "createProduct":
                createProduct(req, resp);
                break;
            case "createCategory":
                createCategory(req, resp);
                break;
            case "delete-account":
                deleteAccount(req, resp);
                break;
            case "delete-product":
                deleteProduct(req, resp);
                break;
            case "create-account":
                createAccount(req, resp);
                break;
            case "update-account":
                updateAccount(req, resp);
                break;
            case "update-product":
                updateProduct(req, resp);
                break;
        }
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("nameProduct");
        double oldPrice = Double.parseDouble(req.getParameter("oldPrice"));
        double currentPrice = Double.parseDouble(req.getParameter("currentPrice"));
        String description = req.getParameter("descriptionProduct");
        String image = req.getParameter("imageProduct");
        int id = Integer.parseInt(req.getParameter("id"));
        int idCategory = Integer.parseInt(req.getParameter("idCategory"));

        Product product = this.service.findById(id);
        product.setName(name);
        product.setOldPrice(oldPrice);
        product.setCurrentPrice(currentPrice);
        product.setDescription(description);
        product.setImage(image);
        product.setIdCategory(idCategory);

        this.service.updateProduct(name, image, oldPrice, currentPrice, description, idCategory, id);
        try {
            resp.sendRedirect("?action=manager-product");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateAccount(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        int isAdmin = Integer.parseInt(req.getParameter("isAdmin"));

        Account account = this.service.findAccountId(id);
        account.setIsAdmin(isAdmin);
        account.setUsername(username);
        account.setPassword(password);

        this.service.updateAccount(username, password, isAdmin, id);
        try {
            resp.sendRedirect("?action=manager-account");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCategory(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        Category category = this.service.findByIdCategory(id);
        if (category != null) {
            service.deleteCategory(id);
        }
        try {
            resp.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createCategory(HttpServletRequest req, HttpServletResponse resp) {
        String nameCategory = req.getParameter("newCategory");

        Category category = new Category(nameCategory);
        this.service.addNewCategory(category);

        try {
            resp.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) {
        String nameProduct = req.getParameter("nameProduct");
        String image = req.getParameter("imageProduct");
        double oldPrice = Double.parseDouble(req.getParameter("oldPrice"));
        double currentPrice = Double.parseDouble(req.getParameter("currentPrice"));
        String description = req.getParameter("descriptionProduct");
        int idCategory = Integer.parseInt(req.getParameter("idCategory"));

        Product product = new Product(nameProduct, image, oldPrice, currentPrice, nameProduct, description, idCategory);
        this.service.addNewProduct(product);
        try {
            resp.sendRedirect("/");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createAccount(HttpServletRequest req, HttpServletResponse resp) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        int isAdmin = Integer.parseInt(req.getParameter("isAdmin"));


        if (username.equals("") || password.equals("")) {
            req.setAttribute("message", "password is wrong!");
            try {
                req.getRequestDispatcher("?action=create-account").forward(req, resp);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            Account accounts = this.service.checkAccountExist(username);
            if (accounts == null) {
                this.service.signUpAccountAccess(username, password, isAdmin);
                try {
                    resp.sendRedirect("?action=manager-account");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    req.setAttribute("login_warning", "login-warning");
                    req.setAttribute("message", "username or password invalid. Please Enter again !");
                    req.getRequestDispatcher("/?action=create-account").forward(req, resp);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void signUpAccount(HttpServletRequest req, HttpServletResponse resp) {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        if (!password.equals(confirmPassword) || username.equals("") || password.equals("")) {
            req.setAttribute("login_warning", "login-warning");
            req.setAttribute("message", "username and password cannot be empty. Please Enter again !");
            try {
                req.getRequestDispatcher("register.jsp").forward(req, resp);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            Account accounts = this.service.checkAccountExist(username);
            if (accounts == null) {
                this.service.signUpAccount(username, password);
                try {
                    HttpSession session = req.getSession();
                    Account account = this.service.login(username, password);
                    session.setAttribute("account", account);
                    resp.sendRedirect("/");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    req.setAttribute("login_warning", "login-warning");
                    req.setAttribute("message", "username already exists. Please Enter again !");
                    req.getRequestDispatcher("register.jsp").forward(req, resp);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void loginAccount(HttpServletRequest req, HttpServletResponse resp) {
        HttpSession session = req.getSession();
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Account account = this.service.login(username, password);

        if (account == null) {
            try {
                req.setAttribute("login_warning", "login-warning");
                req.setAttribute("message", "username or password invalid. Please Login again !");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ServletException e) {
                e.printStackTrace();
            }
        } else {
            if (account != null && username.equals("admin")) {
                try {
                    session.setAttribute("account", account);
                    session.setMaxInactiveInterval(60 * 30);
                    resp.sendRedirect("/");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    session.setAttribute("account", account);
                    session.setMaxInactiveInterval(60 * 30);
                    resp.sendRedirect("/");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
