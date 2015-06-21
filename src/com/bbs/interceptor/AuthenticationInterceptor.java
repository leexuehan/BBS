package com.bbs.interceptor;

import java.util.Map;

import com.bbs.beans.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

@SuppressWarnings("serial")
public class AuthenticationInterceptor extends AbstractInterceptor{
	 public String intercept(ActionInvocation invocation) throws Exception{
		 String result;
		 ActionContext ctx = invocation.getInvocationContext();
		 Map<String, Object> session = ctx.getSession();
		 User user = (User)session.get("user_session");
		 if(user != null) {
			 result = invocation.invoke();
		 }else {
			 result = "login";
		 }
		 return result;
	 }
}
