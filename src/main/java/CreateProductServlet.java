//@WebServlet("/products/create")
//public class CreateProductServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("/products/create.jsp").forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Products productsDao = DaoFactory.getProductsDao();
//        // create a new product based on the submitted data
//        String name = request.getParameter("name");
//        double price = Double.parseDouble(request.getParameter("price"));
//        Product product = new Product(name, price);
//        // persist the new product
//        productsDao.insert(product);
//        response.sendRedirect("/products");
//    }
//}
