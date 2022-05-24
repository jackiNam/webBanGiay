package com.namle.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.namle.model.Product;
import com.namle.service.CategoryService;
import com.namle.service.ProductService;
import com.namle.service.impl.CategoryServiceImpl;
import com.namle.service.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns="/welcome")

public class WellcomeController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Product> productList = productService.getAll();
		req.setAttribute("pwelcome", productList);
		req.getRequestDispatcher("/view/client/view/index.jsp").forward(req, resp);
	}
}
