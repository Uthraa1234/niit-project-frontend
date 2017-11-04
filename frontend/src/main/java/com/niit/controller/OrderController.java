package com.niit.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Cart;
import com.niit.model.CustomerOrder;
import com.niit.model.ShippingAddress;
import com.niit.service.CartService;
import com.niit.service.OrderService;
import com.niit.service.ShippingAddressService;
import com.niit.service.UserService;

@Controller
public class OrderController {

	@Autowired
	private CartService cartService;

	@Autowired
	private UserService userService;
	
	@Autowired
	private ShippingAddressService shippingAddressService;
	
	@Autowired
	private OrderService orderservice;


	
	@RequestMapping("/shipping")
	public String shipping(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		List<ShippingAddress> shipping= shippingAddressService.list(username);
		System.out.println(shipping.size());
		model.addAttribute("shipping", shipping);
		model.addAttribute("shippingaddress", new ShippingAddress());
		return "shipping";

}
	
	@RequestMapping("/addShipping")
	public String addShipping(@ModelAttribute (name="shippingaddress") ShippingAddress shipping){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		shipping.setUserName(username);
		shippingAddressService.saveShippingAddress(shipping);
		return "redirect:/shipping";
}
	
	@RequestMapping("/payment")
	public String payment(@RequestParam int id,Model model){	
		model.addAttribute("ShippingId",id);
		return "payment";
	}

	
	@RequestMapping("/order")
	public String order(@RequestParam int id,Model model){	
		int tot=0;
		ShippingAddress shipping=shippingAddressService.getById(id);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		System.out.println(username);
		List<Cart> cartitems = cartService.getCartbyusername(username);
			CustomerOrder order=new CustomerOrder();
			order.setCartitems(cartitems);
			order.setShipping(shipping);
			order.setUser(username);
			orderservice.saveOrder(order);
			for(Cart c:cartitems){
				tot=tot+c.getTotal();
			}
			model.addAttribute("total", tot);
			Date date=new Date();
			String pattern = "dd-MM-yyyy";
			SimpleDateFormat sdf = new SimpleDateFormat(pattern);
			Calendar c = Calendar.getInstance();
			c.setTime(date);
			Random rand = new Random();
			int i = 2 + rand.nextInt(3);
			c.add(Calendar.DATE, i);
			String d = sdf.format(c.getTime());
			System.out.println(d);
			int dd = c.get(Calendar.DATE);
			long yy = c.get(Calendar.YEAR);
			String mm = new SimpleDateFormat("MMM").format(c.getTime());
			String day = new SimpleDateFormat("EE").format(c.getTime());
			String delivery=day + ", " + mm + " " + dd + " " + yy;
			model.addAttribute("delivery",delivery);
			model.addAttribute("count", cartitems.size());
		model.addAttribute("orders",orderservice.list(username));	
		return "order";
	}
	
	@RequestMapping("/thankyou")
	public String thankyou(Model model){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		orderservice.removeallorderitem(username);
		cartService.aftercheckout(username);
		return "thankyou";
	}

}
