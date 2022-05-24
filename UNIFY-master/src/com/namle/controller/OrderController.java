package com.namle.controller;

import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.namle.model.Cart;
import com.namle.model.CartItem;
import com.namle.model.User;
import com.namle.service.CartItemService;
import com.namle.service.CartService;
import com.namle.service.UserService;
import com.namle.service.impl.CartServiceImpl;
import com.namle.service.impl.CartServiceItemImpl;
import com.namle.service.impl.UserServiceImpl;
import com.namle.tools.SendMail;
import com.namle.util.RandomUUID;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/member/order")
public class OrderController extends HttpServlet {
	UserService userService = new UserServiceImpl();
	CartService cartService = new CartServiceImpl();
	CartItemService cartItemService = new CartServiceItemImpl();
	long time = System.currentTimeMillis();

	@SuppressWarnings("static-access")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("account");
		User buyer = (User) obj;
		Cart cart = new Cart();
		cart.setBuyer(buyer);
		cart.setBuyDate(new java.sql.Date(time));
		cart.setId(RandomUUID.getRandomID());
		cartService.insert(cart);

		Object objCart = session.getAttribute("cart");
		if (objCart != null) {
			// ep ve dung kieu cua no khi them vao o phan them vao gio hang controller
			@SuppressWarnings("unchecked")
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) objCart;

			for (CartItem cartItem : map.values()) {
				cartItem.setCart(cart);
				cartItem.setId(RandomUUID.getRandomID());
				
				cartItemService.insert(cartItem);
				
			}

		}
		session.removeAttribute("cart");
		resp.sendRedirect(req.getContextPath() + "/waiting");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
