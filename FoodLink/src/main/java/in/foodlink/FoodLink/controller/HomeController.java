package in.foodlink.FoodLink.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.foodlink.FoodLink.helper.EmailSender;
import in.foodlink.FoodLink.model.Register;
import in.foodlink.FoodLink.service.RegisterService;

@Controller
public class HomeController {

	
	@Autowired
	RegisterService registerService;
	
	@RequestMapping(value = "/")
	public ModelAndView test(HttpServletResponse response) throws IOException {
		return new ModelAndView("home");
	}

	@RequestMapping("home")
	public String HomePage() {	
		return "home";
	}
	
	@RequestMapping("LoginServlet")
	public String ValidateLogin(Register r,Map<String, String> map,HttpSession session)
	{
	Register s=	registerService.getRegister(r);
		if(s!=null)
		{
			session.setAttribute("uid",s.getRid());
			session.setAttribute("user",r.getUsername());
			return "home";
		}
		else
		{
			map.put("mes","Please enter a valid username and password.");
			return "login";
		}
	}
	@RequestMapping("about")
	public String AboutPage() {
		return "about";
	}

	@RequestMapping("login")
	public String LoginPage() {
		return "login";
	}

	@RequestMapping("register")
	public String RegisterPage() {
		
		return "register";
	}

	@RequestMapping("RegisterServlet")
	public String Registration(Register r, Map<String, Register> map) {
		System.out.println(r);
		Random random = new Random();
		r.setOtp(100000 + random.nextInt(900000));
		String mgs = "Your OTP is " + r.getOtp()
				+ ". Please do not share this code with anyone. - Foodlink F&B Holdings (India) Pvt. Ltd.";
		EmailSender.sendEmail(r.getEmail(), "Get Otp Resive ", mgs);
		map.put("reg", r);
		return "otpForm";
	}

	@RequestMapping("validateOTP")
	public String validateOTp(Register r, @RequestParam("userotp") int uotp,Map<String,Register> map) {
		
		if (r.getOtp()== uotp) {
		boolean b =	registerService.isRegister(r);	
			return "otpSuccess";
		} else {
			map.put("reg",r);
			return "otpError";
		}
	}

	@RequestMapping("guidelines")
	public String GuidelinesPage() {
		return "guidelines";
	}
	
	@RequestMapping("logout")
	public String LogoutPage(HttpSession session)
	{
		session.invalidate();
		return "login";
	}
}
