package com.hsshop.useraccount;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hsshop.exceptionhandlers.ResourceNotFoundException;
import com.hsshop.pojos.AddressPojo;
import com.hsshop.pojos.RegisterPojo;
import com.hsshop.util.PasswordEncoder;
import com.hsshop.util.UserService;

@RestController()
public class UserController {

	@Autowired
	private UserService userService;

	@SuppressWarnings("unused")
	@Autowired
	private PasswordEncoder PasswordEncoder;

	@RequestMapping("/")
	public ModelAndView mainHome() throws ResourceNotFoundException {
		ModelAndView mv = new ModelAndView("/MainHome");
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("/Login");
		return mv;

	}

	@RequestMapping("/register")
	public ModelAndView Home() {
		ModelAndView mv = new ModelAndView("/Register");

		return mv;

	}

	// It is used for checking loging details and if it is correct it will go home
	// page and if it is wrong it will go login error page

	@RequestMapping(value = "/home")
	public ModelAndView showWelcomePage(ModelMap model, @RequestParam String email, @RequestParam String password) throws Exception{

		System.out.println("login");
		String m = userService.validateUser(email, password);
		if (m.equals("admin")) {
			ModelAndView m1 = new ModelAndView("/AdminPage");
			return m1;
		} else if (m.equals("user")) {
			ModelAndView m1 = new ModelAndView("/Home");
			return m1;
		} else {
			String message = "Invalid Details";
			ModelAndView m1 = new ModelAndView("/Login");
			m1.addObject("message", message);
			return m1;
		}
	}

	@RequestMapping("/homepage")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("/Home");
		return mv;

	}

	@RequestMapping("/maincart")
	public ModelAndView cart() {
		ModelAndView mv = new ModelAndView("/Cart");

		return mv;

	}

	@RequestMapping("/details")
	public ModelAndView register(ModelMap model, @RequestParam String fullname, @RequestParam String email,
			@RequestParam String phone, @RequestParam String pwd, @RequestParam String pwd2, @RequestParam int age,
			@RequestParam String gender, @RequestParam String state, @RequestParam String city,
			@RequestParam int pincode) {

		RegisterPojo registerPojo = new RegisterPojo();
		registerPojo.setFullName(fullname);
		registerPojo.setEmail(email);
		registerPojo.setPhoneNumber(phone);
		registerPojo.setPassword(pwd);
		registerPojo.setAge(age);
		registerPojo.setGender(gender);
		AddressPojo addressPojo = new AddressPojo();
		addressPojo.setCity(city);
		addressPojo.setState(state);
		addressPojo.setPin(pincode);

		registerPojo.setAddress(addressPojo);
		// boolean registerSuccessful = userService.register(registerPojo, addressPojo);
		if (userService.register(registerPojo, addressPojo)) {
			String message = "Account Created Successful, Login with you'r new details";
			ModelAndView m1 = new ModelAndView("/Register");
			m1.addObject("message", message);
			return m1;
		}
		String message1 = "Email already exist";
		ModelAndView m1 = new ModelAndView("/Register");
		m1.addObject("message1", message1);
		return m1;
	}

	@RequestMapping("/forgot")
	public ModelAndView forgetPassword(ModelMap model, @RequestParam String email, @RequestParam String pwd1,
			@RequestParam String pwd2) {

		userService.changePassword(email, pwd1);

		String message = "Password Created Successfully";
		ModelAndView m1 = new ModelAndView("/Login");
		m1.addObject("message", message);
		return m1;

	}

	@RequestMapping("/forgotpassword")
	public ModelAndView forgotpassword() {
		ModelAndView mv = new ModelAndView("/ForgotPassword");

		return mv;

	}

}
