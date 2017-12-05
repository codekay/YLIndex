package cn.xu.tools;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;

public class HttpHelper {
    public static String getGetMessage(HttpServletRequest request){
        Enumeration enumeration = request.getHeaderNames();
        StringBuffer stringBuffer = new StringBuffer();
        System.out.println("Get请求");
        while(enumeration.hasMoreElements()){
            String heard = (String) enumeration.nextElement();
            stringBuffer.append(heard + "=" + request.getHeader(heard) + ";");
        }
        return stringBuffer.toString();
    }

    public static String getPostMessage(HttpServletRequest request){

        Enumeration enumeration = request.getParameterNames();
        StringBuffer stringBuffer = new StringBuffer();
        System.out.println("POST请求");
        while(enumeration.hasMoreElements()){
            String param = (String) enumeration.nextElement();
            stringBuffer.append(param + "=" + request.getParameter(param) + ";");
        }
        return stringBuffer.toString();
    }
}
