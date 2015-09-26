package com.add.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.add.db.MongoDBDAO;
import com.add.domain.Client;

/**
 * Servlet implementation class AddServlet
 */
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String viewName = "/error.jsp";
		Client client = new Client();
		RequestDispatcher rd = null;
		try{					
		client.setOrgName(request.getParameter("orgName"));
		client.setAddr1(request.getParameter("addr1"));
		client.setAddr2(request.getParameter("addr2"));
		client.setAddr3(request.getParameter("addr3"));
		client.setCity(request.getParameter("city"));
		client.setState(request.getParameter("state"));
		client.setCountry(request.getParameter("country"));
		client.setPostalCode(request.getParameter("zip"));
		client.setAddDesc(request.getParameter("desc"));
		request.setAttribute("client", client);
		MongoDBDAO mongoDAO = new MongoDBDAO();
		if(mongoDAO.insertADDDetails(client)){
			viewName = "/post.jsp";
		}
		rd = request.getRequestDispatcher(viewName);	
		}
		catch(Exception e){
			rd = request.getRequestDispatcher("/error.jsp");
		}
		
		rd.forward(request, response);
	}

}
