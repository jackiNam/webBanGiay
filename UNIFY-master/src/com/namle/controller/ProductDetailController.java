package com.namle.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.namle.model.Category;
import com.namle.model.Product;
import com.namle.service.CategoryService;
import com.namle.service.ProductService;
import com.namle.service.impl.CategoryServiceImpl;
import com.namle.service.impl.ProductServiceImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns="/product/detail")
public class ProductDetailController extends HttpServlet {
	ProductService productService = new ProductServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product product = productService.get(Integer.parseInt(id));
		List<Category> categories = categoryService.getAll();
		req.setAttribute("categories", categories);
		req.setAttribute("product", product);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/view/product-detail.jsp");
		dispatcher.forward(req, resp);
	}

}
