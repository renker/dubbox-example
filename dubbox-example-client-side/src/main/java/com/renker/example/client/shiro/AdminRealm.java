package com.renker.example.client.shiro;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Reference;
import com.renker.example.person.model.Person;
import com.renker.example.person.service.IPersonService;
import com.renker.example.utils.MD5Util;

@Component
public class AdminRealm extends AuthorizingRealm{

	@Resource
	private IPersonService personService;
	
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
		simpleAuthorizationInfo.addRole("admin");
		simpleAuthorizationInfo.addStringPermission("person.toCreate");
		return simpleAuthorizationInfo;
	}

	/**
	 * 登陆认证
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
		
		String account = token.getUsername();
		String password = new String(token.getPassword());
		
		Person person = personService.login(account);
		if(person != null){
			person = personService.login(account, MD5Util.MD5(password,person.getSalt()));
			if(person != null){
				return new SimpleAuthenticationInfo(account,password,  token.getUsername());
			}else{
				throw new IncorrectCredentialsException("密码验证错误");
			}
		}else{
			throw new UnknownAccountException("账号验证错误");
		}
		
	}
	
}
