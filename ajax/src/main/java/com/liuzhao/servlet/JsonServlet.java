package com.liuzhao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liuzhao.entity.Student;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class JsonServlet
 */
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JsonServlet() {
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
		//String mobile=request.getParameter("mobile");
		PrintWriter out=response.getWriter();
		
		Student stu1=new Student();
		stu1.setName(request.getParameter("name"));
		stu1.setAge( new Integer(request.getParameter("age")));
		
		Student stu2=new Student();
		stu2.setName("qq");
		stu2.setAge(44);
		
		Student stu3=new Student();
		stu3.setName("ww");
		stu3.setAge(55);
		
		//创建json对象
		JSONObject json = new JSONObject();
		json.put("stu1", stu1);  //key="stu" value=stu对象
		json.put("stu2", stu2);
		json.put("stu3", stu3);
		out.print(json);//返回json对象
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
