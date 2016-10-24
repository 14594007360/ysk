package com.ysk.util;

import java.util.Properties;
import java.util.Random;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Controller;

@Controller("emailUtilImpl")
public class EmailUtilImpl implements EmailUtil {

	Properties prop = null;
	Session session = null;
	Transport transport = null;
	
	public void setEmail(String email,String id) {
		try{
		// 登录邮件客户端(创建Session)
		prop = new Properties();
		prop.setProperty("mail.transport.protocol", "smtp");
		// 创建了session回话
		session = Session.getDefaultInstance(prop);

		// 设置debug模式调试发送信息
		session.setDebug(true);

		// 创建一封邮件对象
		Message message = new MimeMessage(session);
		// 写信
		message.setSubject("booking(预时刻)注册验证码");
		message.setContent("booking(预时刻)注册验证码："+id, "text/html;charset=utf-8");
		// 发件人地址
		message.setFrom(new InternetAddress("soft03_test@sina.com"));
		// 和连接邮件服务器的认证信息
		transport = session.getTransport();
		// 和链接邮件服务器的认证信息
		transport.connect("smtp.sina.com", "soft03_test", "soft03_test");
		// 设置收件人,并且发送邮件
		transport.sendMessage(message, new Address[] { new InternetAddress(email) });
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				transport.close();
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		
	}


}
