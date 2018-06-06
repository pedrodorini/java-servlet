package br.univel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="RegisterServlet", urlPatterns= {"/index"})
public class RegisterServlet extends HttpServlet {
	private static List<RegisterBean> listBean = new ArrayList<RegisterBean>();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		
		RegisterBean register = new RegisterBean();
		register.setName(name);
		
		listBean.add(register);
		
		req.setAttribute("bean", renderTable(listBean));
		
		RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
	}
	
	public String renderTable(List<RegisterBean> list) {
		StringBuilder sb = new StringBuilder();
		
		for (RegisterBean bean : list) {
			sb.append("<li class=\"l-list-item\">").append(bean.getName()).append("</li>");
		}

		return sb.toString();
	}
	
}
