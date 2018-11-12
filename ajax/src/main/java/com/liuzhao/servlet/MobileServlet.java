package com.liuzhao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MobileServlet
 */
public class MobileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String mobile=request.getParameter("mobile");
		PrintWriter out=response.getWriter();
		//假设数据库只有一个号码：18550406377
		if("18550406377".equals(mobile)){
			//servlet以输出流的方式将信息返回给客户端
			//load方式不用判断，直接输出内容
			//out.write("true");
			
			//load方式
			//out.write("此号码已存在");
			
			//如果客户端是getJSON（）形式，就需要已json格式返回数据
			out.write("{\"msg\":\"true\"}");
		}else{
			//out.write("false");
			
			
			//load方式
			//out.write("注册成功");
			
			out.write("{\"msg\":\"false\"}");
		}
		out.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
