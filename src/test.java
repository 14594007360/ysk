import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import com.ysk.vo.Address;
import com.ysk.vo.Message;
import com.ysk.vo.Passport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class test {
	public static void main(String[] args) throws Exception {
		System.out.println(getRealIp());
		System.out.println(getHtmlConentByUrl("218.87.140.50"));
		// change();
	}

	public static String getHtmlConentByUrl(String ip) {
		String ssourl = "http://api.ip138.com/query/?ip="
				+ ip
				+ "&datatype=jsonp&callback=find&token=e9b3ad7839d16cea3ecfc69075f83172";

		System.out.println(ssourl);

		try {
			URL url = new URL(ssourl);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();

			con.setInstanceFollowRedirects(false);
			con.setUseCaches(false);
			con.setAllowUserInteraction(false);
			con.connect();
			StringBuffer sb = new StringBuffer();
			String line = "";
			BufferedReader URLinput = new BufferedReader(new InputStreamReader(
					con.getInputStream(), "utf-8"));
			while ((line = URLinput.readLine()) != null) {
				System.out.println(line);
			}
			con.disconnect();

			return sb.toString().toLowerCase();
		} catch (Exception e) {

			return null;
		}
	}

	public static void change() {
		String str = "{"ret":"ok","ip":"218.87.140.50","data":["中国","江西","赣州","电信"]}";
		JSONObject jsonobject = JSONObject.fromObject(str);

		Passport Entitypassportlends = null;
		try {
			// 获取一个json数组
			JSONArray array = jsonobject.getJSONArray("passports");
			// 将json数组 转换成List<PassPortForLendsEntity>泛型
			List<Passport> list = new ArrayList<Passport>();
			for (int i = 0; i < array.size(); i++) {
				JSONObject object = (JSONObject) array.get(i);
				Passport passport = (Passport) JSONObject.toBean(object,
						Passport.class);
				if (passport != null) {
					list.add(passport);
				}
			}
			// 转换PassportLendsEntity实体类
			Message lends = (Message) JSONObject.toBean(jsonobject,
					Message.class);

			System.out.println(lends.getCheckperson());
			System.out.println(lends.getLendcompany());
			System.out.println(lends.getLendcounts());
			System.out.println(lends.getPassports());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	   public static String getRealIp() throws SocketException {
	        String localip = null;// 本地IP，如果没有配置外网IP则返回它
	        String netip = null;// 外网IP
	 
	        Enumeration<NetworkInterface> netInterfaces =
	            NetworkInterface.getNetworkInterfaces();
	        InetAddress ip = null;
	        boolean finded = false;// 是否找到外网IP
	        while (netInterfaces.hasMoreElements() && !finded) {
	            NetworkInterface ni = netInterfaces.nextElement();
	            Enumeration<InetAddress> address = ni.getInetAddresses();
	            while (address.hasMoreElements()) {
	                ip = address.nextElement();
	                if (!ip.isSiteLocalAddress()
	                        && !ip.isLoopbackAddress()
	                        && ip.getHostAddress().indexOf(":") == -1) {// 外网IP
	                    netip = ip.getHostAddress();
	                    finded = true;
	                    break;
	                } else if (ip.isSiteLocalAddress()
	                        && !ip.isLoopbackAddress()
	                        && ip.getHostAddress().indexOf(":") == -1) {// 内网IP
	                    localip = ip.getHostAddress();
	                }
	            }
	        }
	     
	        if (netip != null && !"".equals(netip)) {
	            return netip;
	        } else {
	            return localip;
	        }
	    }
}
