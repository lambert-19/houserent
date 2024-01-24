package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF=-8");
		try(PrintWriter out=response.getWriter()){
			ArrayList<Housecard> cardList=new ArrayList<>();
			int id =Integer.parseInt(request.getParameter("id"));
			Housecard cm= new Housecard();
			cm.setId(id);


			HttpSession session=request.getSession();

		  ArrayList<Housecard> cart_list=(ArrayList<Housecard>) session.getAttribute("cart-list");

		if(cart_list==null) {
			cardList.add(cm);
			session.setAttribute("cart-list",cardList );
			response.sendRedirect("ClientPage.jsp");
			
		}
		else {
			cardList =cart_list;
			boolean exist=false;

			for(Housecard c:cart_list) {
				if(c.getId() ==id) {
					exist=true;
		out.println("<h3 style='color:crimson;text-align:center'>Item Already exist in cart.<a href=cart.jsp>Go to cart page</a></h3>");
				}

			}
			if(!exist) {
				cardList.add(cm);
				response.sendRedirect("ClientPage.jsp");
			}
		}


		}
	}

}
