package com.namle.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.namle.service.CartItemService;
import com.namle.service.impl.CartServiceItemImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns="/admin/order/delete")
public class OrderDeleteController extends HttpServlet {
	CartItemService cartItemService=new CartServiceItemImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id= req.getParameter("id");
		cartItemService.delete(id);
		resp.sendRedirect(req.getContextPath()+"/admin/order/list");
	}

}
