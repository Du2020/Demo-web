package com.neusoft.dao;
import com.neusoft.bean.User;

public interface UserDao {
    Integer addUser(User u);
    Integer findUser(User u);
    Integer findUserID(User u);
}
