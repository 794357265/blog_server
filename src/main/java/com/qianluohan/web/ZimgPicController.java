package com.qianluohan.web;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
* @author zhangyibing  zhangyibing618@163.com
* @Date 2021/2/22
* @desription
**/
@Controller
public class ZimgPicController {

    @Value("${zimg.address}")
    private String picServerAddress;

    @RequestMapping("/zimg/getPic/{id}")
    @ResponseBody
    public void getPicById(@PathVariable String id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        InputStream inputStream = null;
        HttpURLConnection httpURLConnection = null;
        try{
            URL url = new URL(picServerAddress + "/" + id);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            // 设置网络连接超时时间
            httpURLConnection.setConnectTimeout(3000);
            // 设置应用程序要从网络连接读取数据
            httpURLConnection.setDoInput(true);

            httpURLConnection.setRequestMethod("GET");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                // 从服务器返回一个输入流
                inputStream = httpURLConnection.getInputStream();
            }
            ServletOutputStream outputStream = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int len = inputStream.read(buffer);
            while (len != -1) {
                outputStream.write(buffer, 0, len);
                len = inputStream.read(buffer);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            inputStream.close();
        }
    }

}
