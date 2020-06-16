package com.neusoft.dao;
import com.neusoft.bean.UserLoginLog;
import java.util.List;
public interface UserLoginLogDao {
    Integer  addUserLoginLog(UserLoginLog u);
    List<UserLoginLog> findAllUserLoginLog();
}
