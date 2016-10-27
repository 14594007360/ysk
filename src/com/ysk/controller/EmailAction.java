package com.ysk.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;




import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ysk.service.UserService;
import com.ysk.util.EmailUtil;
import com.ysk.util.PhoneUtil;
@Controller
@Scope("prototype")
public class EmailAction extends ActionSupport implements SessionAware{
	@Resource
	public EmailUtil emailUtil = null;
	@Resource
	public PhoneUtil phoneUtil = null;
	@Resource
	private UserService userService;
	
	public Map<String, Object> session;
	
	public InputStream inputStream;
	public InputStream getInputStream() {
		return inputStream;
	}
	public String email;
	public boolean type;
	@SuppressWarnings("unused")
	public String register(){
		if(type){
			//�ж��û��Ƿ����
			//userService.getUserByCode(email);
			if(true){
				try {
					inputStream = new ByteArrayInputStream("2".getBytes("utf-8"));
					return "ajax-success";
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
				
			}	
		}
		try {
			//������֤����λ����
			Random random = new Random();
			int num=0;
			for(int i = 0; i<=3; i++)
			num = num*10 + random.nextInt(9);
			String registerYZM = Integer.toString(num);			
			
			//ִ�з����ʼ����߷��Ͷ���
			if(email.indexOf("@")!=-1){
				emailUtil.setEmail(email,registerYZM);
			}else{
				phoneUtil.setPhone(email, registerYZM);
			}
			//����֤��ŵ�session��
			if(session.get("registerYZM")!=null){
				session.remove("registerYZM");
			}
			session.put("registerYZM", registerYZM);
			
			//�����ķ�ʽ����
			inputStream = new ByteArrayInputStream("1".getBytes("utf-8"));
		} catch (UnsupportedEncodingException e) {
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("utf-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
		return "ajax-success";
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public boolean isType() {
		return type;
	}
	public void setType(boolean type) {
		this.type = type;
	}
}
