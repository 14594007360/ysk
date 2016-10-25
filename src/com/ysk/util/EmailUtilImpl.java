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
		// ��¼�ʼ��ͻ���(����Session)
		prop = new Properties();
		prop.setProperty("mail.transport.protocol", "smtp");
		// ������session�ػ�
		session = Session.getDefaultInstance(prop);

		// ����debugģʽ���Է�����Ϣ
		session.setDebug(true);

		// ����һ���ʼ�����
		Message message = new MimeMessage(session);
		// д��
		message.setSubject("booking(Ԥʱ��)ע����֤��");
		message.setContent("booking(Ԥʱ��)ע����֤�룺"+id, "text/html;charset=utf-8");
		// �����˵�ַ
		message.setFrom(new InternetAddress("soft03_test@sina.com"));
		// �������ʼ�����������֤��Ϣ
		transport = session.getTransport();
		// �������ʼ�����������֤��Ϣ
		transport.connect("smtp.sina.com", "soft03_test", "soft03_test");
		// �����ռ���,���ҷ����ʼ�
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
