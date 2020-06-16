package com.neusoft.controller;
import com.neusoft.bean.User;
import com.neusoft.bean.UserLoginLog;
import com.neusoft.dao.UserDao;
import com.neusoft.dao.UserLoginLogDao;
import com.neusoft.service.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Calendar;
//@SessionAttributes(value={})
@Controller
public class LoginController {
	@Autowired
	private UserDao ud;
	@Autowired
	private UserLoginLogDao uld;
	@RequestMapping(value="/login.action",method=RequestMethod.POST)
     public ModelAndView login(@ModelAttribute User u) {
		ModelAndView mv=new ModelAndView();
		MD5 md=new MD5();
		String pwd=md.getMD5(u.getPassword());
		u.setPassword(pwd);
		int uid=(ud.findUserID(u)==null?0:ud.findUserID(u));
		u.setUser_id(uid);
		int count=ud.findUser(u);
	    if(count>0){
			UserLoginLog ul=new UserLoginLog();
			System.out.print(u.getUser_id());
			ul.setUser_id(u.getUser_id());
			Calendar date = Calendar.getInstance();
			String time=date.get(Calendar.YEAR)+"-"
					+(date.get(Calendar.MONTH)+1)+"-"
					+date.get(Calendar.DAY_OF_MONTH)+"-"
					+date.get(Calendar.HOUR_OF_DAY)+":"
					+date.get(Calendar.MINUTE)+":"
					+date.get(Calendar.SECOND);
			ul.setLogin_ip(u.getCellphone());
			ul.setLogin_time(time);
			uld.addUserLoginLog(ul);
			mv.setViewName("/index.action");
		}else{
	    	mv.setViewName("failure.jsp");
		}
		return mv;
     }
}
