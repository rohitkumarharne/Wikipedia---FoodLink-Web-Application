package in.foodlink.FoodLink.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {

//	@RequestMapping("organization")
//	public String OrganizationPage(HttpSession session) {
//		String s = (String) session.getAttribute("uid");
//		System.out.println(s + "sss");
//		if (s != null) {
//			return "organization";
//		} else {
//			return "login";
//		}
//	}

	@RequestMapping("organization")
	public String OrganizationPage(HttpSession session, Map<String, String> map) {
		Integer userId = (Integer) session.getAttribute("uid");

		if (userId != null) {
			int id = userId.intValue();
			return "organization";
		} else {
			map.put("mes", "You cannot access this page before logging in.");
			return "login";
		}
	}

	@RequestMapping("founder")
	public String FounderPage(HttpSession session, Map<String, String> map) {
		Integer userId = (Integer) session.getAttribute("uid");

		if (userId != null) {
			int id = userId.intValue();
			return "founder";
		} else {
			map.put("mes", "You cannot access this page before logging in.");
			return "login";
		}
	}

	@RequestMapping("leader")
	public String LeaderPage(HttpSession session, Map<String, String> map) {
		Integer userId = (Integer) session.getAttribute("uid");

		if (userId != null) {
			int id = userId.intValue();
			return "leader";
		} else {
			map.put("mes", "You cannot access this page before logging in.");
			return "login";
		}

	}

	@RequestMapping("department")
	public String DepartmentPage(HttpSession session, Map<String, String> map) {
		Integer userId = (Integer) session.getAttribute("uid");

		if (userId != null) {
			int id = userId.intValue();
			return "department";
		} else {
			map.put("mes", "You cannot access this page before logging in.");
			return "login";
		}

	}
}
