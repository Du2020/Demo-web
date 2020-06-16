package com.neusoft.controller;
import java.util.Calendar;
import java.util.List;
import com.neusoft.bean.User;
import com.neusoft.dao.UserDao;
import com.neusoft.service.MD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
//@SessionAttributes(value={})
@Controller
public class RegisterController {
    @Autowired
    private UserDao ud;
    @RequestMapping(value="/register.action",method=RequestMethod.POST)
    public ModelAndView register(@ModelAttribute User u) {
        ModelAndView mv = new ModelAndView();
        User uy=new User();
        uy.setCellphone(u.getCellphone());
        String pwd= MD5.getMD5(u.getPassword());
        uy.setPassword(pwd);
        uy.setState('1');
        Calendar date = Calendar.getInstance();
        String time=date.get(Calendar.YEAR)+"-"
                +(date.get(Calendar.MONTH)+1)+"-"
                +date.get(Calendar.DAY_OF_MONTH)+"-"
                +date.get(Calendar.HOUR_OF_DAY)+":"
                +date.get(Calendar.MINUTE)+":"
                +date.get(Calendar.SECOND);
        uy.setCreate_time(time);
        ud.addUser(uy);
        mv.setViewName("Login.jsp");
        return mv;
    }
}
