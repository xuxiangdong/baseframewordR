package com.stsoft.security;

import java.util.List;

import com.stsoft.entity.Role;
import com.stsoft.entity.User;

public class IUserManager
{
    /**
     * 根据用户信息获取用户的角色信息
     * <一句话功能简述>
     * <功能详细描述>
     * @param user
     * @return
     * @see [类、类#方法、类#成员]
     */
    public List<Role> getRoles(User user)
    {
        return null;
    }
    public User search(String username)
    {
        User user = new User();
        user.setUsername(username);
        user.setPassword("123");
        return user;
    }
}
