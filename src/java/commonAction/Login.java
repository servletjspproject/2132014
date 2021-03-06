/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package commonAction;

import dataBaseOperations.dao.ProductsHome;
import dataBaseOperations.dao.ShoppingCartHome;
import dataBaseOperations.dao.UsersHome;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tables.Products;
import tables.ShoppingCart;
import tables.Users;
import utility.ShoppingCartSession;

/**
 *
 * @author abdotalaat
 */
public class Login extends HttpServlet {
    
    String mail;
    String pass;
    HttpSession session;
    ShoppingCartSession cart ;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            cart = new ShoppingCartSession();
            
            mail = request.getParameter("logInMail");
            pass = request.getParameter("logPass");
            //get using hibernate the user of specified mail and pass then return an object of type user
            UsersHome usersHome = new UsersHome();
            Users user = usersHome.getUser(mail, pass);
            //u=from hibernate
            if (user != null) { //get user type whether an ordinary consumer or an admin

                // if u is admin set attribute on session then redirect to the customer page
                if (user.getUserType().equals("admin")) {
                    session = request.getSession();
                    
                    session.setAttribute("user", user);
                    RequestDispatcher rd = request.getRequestDispatcher("myCustomers.html");
                    rd.forward(request, response);
                } //if u is customer set attribute on session then redirect to the index page
                else {
                    session = request.getSession();

                    //check if anu product not buyed in the last session
                    
                    
                    ShoppingCartHome cartHome = new ShoppingCartHome();
                    List<ShoppingCart> shoppingCarts = cartHome.getLatestshShoppingCartsList(user.getIdusers());
                    
                    for (ShoppingCart shoppingCart : shoppingCarts) {
                        ProductsHome productsHome = new ProductsHome();
                        Products products = productsHome.getProducts(shoppingCart.getProductId());
                        cart.getProductses().add(products);
                        
                    }
                    
                    
                    
                    session.setAttribute("cart", cart);
                    session.setAttribute("user", user);
                    //RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    //rd.forward(request, response);
                    response.sendRedirect("index.jsp");
                    
                    
                }
                
                
            } else {
                //if user name or pass don't exist  the err param is true so reload the page and append the error msg
                response.sendRedirect("login.jsp?error=true");
                
                
            }
            
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
