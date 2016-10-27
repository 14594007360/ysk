package com.ysk.util;

import org.springframework.stereotype.Controller;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
@Controller("phoneUtilImpl")
public class PhoneUtilImpl implements PhoneUtil{
	
	public void setPhone(String phone,String id){
		try {
			TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest","23400073","d671b65113ebbf66eb8f52e2079bcd1c");
			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			req.setSmsType( "normal" );
			req.setSmsFreeSignName( "预时刻注册验证码" );
			req.setSmsParamString( "{name:'',yzm:'"+id+"'}" );
			req.setRecNum( phone );
			req.setSmsTemplateCode( "SMS_16730104" );
			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
			System.out.println(rsp.getBody());
				rsp = client.execute(req);
				System.out.println(rsp.getBody());
			} catch (ApiException e) {
				e.printStackTrace();
			}
	}
	public static void main(String[] args) {
		String a = "123qq.com";
		if(a.indexOf("@")==-1){
			System.out.println("电话");
		}
		else{
			System.out.println("邮箱");
		}
	}
	
}
