package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Login;
import com.model.SaveManager;

/**
 * Servlet implementation class SaveUser
 */
public class SaveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String name = request.getParameter("name");
		int id = Integer.parseInt(request.getParameter("id"));
		String dept = request.getParameter("dept");
		String username = request.getParameter("username");
		String password= request.getParameter("password");

		Login L = new Login();
		L.setName(name);
		L.setId(id);
		L.setDept(dept);
		L.setUsername(username);
		L.setPassword(password);
		
		SaveManager SM = new SaveManager();
		String ack="";
		try
		{
			ack = SM.saveData(L);
		}catch(Exception e)
		{
			ack = e.getMessage();
		}
		pw.println(ack);
		RequestDispatcher rd = request.getRequestDispatcher("addUser.jsp");
		rd.include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
