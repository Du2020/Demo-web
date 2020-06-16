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
import java.util.List;
@SessionAttributes(value={"UserLoginLogList"})
@Controller
public class IndexController {
    @Autowired
    private UserLoginLogDao uld;
    @RequestMapping(value="/index.action",method=RequestMethod.POST)
    public ModelAndView showIndex() {
        ModelAndView mv=new ModelAndView();
        List<UserLoginLog>u=uld.findAllUserLoginLog();
        for(int i=0;i<u.size();i++){
            System.out.println(u.get(i).getLogin_time());
        }
        mv.addObject("UserLoginLogList",u);
        mv.setViewName("index.jsp");
        return mv;
    }
}
