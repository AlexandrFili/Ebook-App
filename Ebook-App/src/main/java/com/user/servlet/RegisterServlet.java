package com.user.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Установка кодировки
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");

		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			// System.out.println(name+" "+email+" "+phone+" "+password+" "+check);

			User us = new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			us.setPassword(password);

			HttpSession session = req.getSession();

			if (check != null) {
				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				boolean f = dao.userRegister(us);
				if (f) {
					// System.out.println("Пользователь успешно зарегистрирован...");

					session.setAttribute("succMsg", "Пользователь успешно зарегистрирован.");
					resp.sendRedirect("register.jsp");

				} else {
					// System.out.println("Что-то не так на сервере...");

					session.setAttribute("failedMsg", "Что-то не так на сервере...");
					resp.sendRedirect("register.jsp");
				}
			} else {
				// System.out.println("Пожалуйста, проверьте условия пользования!");

				session.setAttribute("failedMsg", "Пожалуйста, проверьте условия пользования!");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
