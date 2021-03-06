package com.huadi.cedon.servlet;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class generate_pic extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Random random = new Random();
    
    private int r(int min,int max){
        int num=0;
        num=random.nextInt(max-min)+min;
        return num;
    }
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException,IOException {
    	StringBuilder stringBuilder = new StringBuilder();

    	//在内存中创建一副图片
    	String clientCheckcode = request.getParameter("userCode");
        int w=120;
        int h=50;
        BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
        //在图片上画一个矩形当背景
        Graphics g = img.getGraphics();
        g.setColor(new Color(r(50,250),r(50,250),r(50,250)));
        g.fillRect(0, 0, w, h);
         
        String str = "aqzxswedcfrvgtbhyujklp23456789";
        for(int i=0;i<4;i++){
            g.setColor(new Color(r(50,180),r(50,180),r(50,180)));
            g.setFont(new Font("黑体",Font.PLAIN,40));
            char c = str.charAt(r(0,str.length()));
            g.drawString(String.valueOf(c), 10+i*30, r(h-30,h));
            stringBuilder = stringBuilder.append(c);
        }
         
        //画随机线
        for(int i=0;i<25;i++){
            g.setColor(new Color(r(50,180),r(50,180),r(50,180)));
            g.drawLine(r(0,w), r(0,h),r(0,w), r(0,h));
        }
        
        request.getSession().setAttribute("checkcode", stringBuilder.toString());
        response.setContentType("image/jpeg");
        response.setDateHeader("expries", -1);
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        ImageIO.write(img, "jpeg", response.getOutputStream());
    }
}