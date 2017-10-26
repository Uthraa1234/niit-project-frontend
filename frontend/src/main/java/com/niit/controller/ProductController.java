package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping("/getcategoryform")
	public String getaddcategory(Model model) {
		model.addAttribute("Category", new Category());
		return "categoryForm";
	}
	
	@RequestMapping(value="/savecategory",method=RequestMethod.POST)
	public ModelAndView savecategory(@ModelAttribute(name = "Category") Category category) {
		ModelAndView mv=new ModelAndView();
		categoryService.saveCategory(category);
		/*return "redirect:/admin/products/getcategoryform";*/
		mv.setViewName("redirect:/getcategoryform");
	/*	return "redirect:/getcategoryform";*/
		return mv;
	}
	
	@RequestMapping("/getproductform")
	public String getaddproduct(Model model) 
	{
		List<Category> categories=categoryService.list();
		model.addAttribute("categories",categories);
		model.addAttribute("product",new Product());
		return "productForm";
		
	}
	
	
	
}
