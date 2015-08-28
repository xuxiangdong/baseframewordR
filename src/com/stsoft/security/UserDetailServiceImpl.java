package com.stsoft.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.config.authentication.AuthenticationManagerBeanDefinitionParser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;

import com.stsoft.entity.Role;
import com.stsoft.entity.User;

public class UserDetailServiceImpl implements UserDetailsService
{
    
    private IUserManager userManager = new IUserManager();
    
    public UserDetailServiceImpl()
    {
    }
    
    public IUserManager getUserManager()
    {
        return userManager;
    }
    
    @Override
    public UserDetails loadUserByUsername(String username)
        throws UsernameNotFoundException
    {
        User user = userManager.search(username);
        // 如果根据用户输入的用户名，查找不到用户信息，那么就表示该用户不存在，抛出用户名未发现异常
        if (user == null)
        {
            throw new UsernameNotFoundException(username + " not exist!");
        }
        // 如果用户名和密码正确，那么就根据用户信息查找用户角色信息，根据角色信息获取用户权限
        List<GrantedAuthority> authsList = new ArrayList<GrantedAuthority>();
        for (Role role : userManager.getRoles(user))
        {
            // 根据用户角色名获取用户权限
            authsList.add(new GrantedAuthorityImpl(role.getName()));
        }
        // 用户账号是否过期
        boolean accountNonExpired = true;
        // 用户凭据是否过期
        boolean credentialsNonExpired = true;
        // 用户账号是否锁定
        boolean accountNonLocked = true;
        UserDetails userdetails =
            new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), user.isEnabled(), accountNonExpired, credentialsNonExpired, accountNonLocked, authsList);
        
        return userdetails;
    }
}
