package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UserInfo;

/**
 * Servlet implementation class FindUserServlet
 */
@WebServlet("/FindUserServlet")
public class FindUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 try {  
	            // 加载数据库驱动，注册到驱动管理器  
	            Class.forName("com.mysql.jdbc.Driver");  
	            // 数据库连接字符串  
	            String url = "jdbc:mysql://localhost:3306/sapExt?useUnicode=true&characterEncoding=utf-8";  
	            // 数据库用户名  
	            String username = "root";  
	            // 数据库密码  
	            String password = "liujie";  
	            // 创建Connection连接  
	            Connection conn = DriverManager.getConnection(url, username,  
	                    password);  
	            // 遍历SAP账户信息的SQL语句  
	            String sql = "select * from UserInfo";  
	            // 获取Statement  
	            Statement statement = conn.createStatement();  
	  
	            ResultSet resultSet = statement.executeQuery(sql);  
	  
	            List<UserInfo> list = new ArrayList<UserInfo>();  
	            while (resultSet.next()) {  
	  
	            	UserInfo user = new UserInfo();  
	            	user.setId(resultSet.getInt("id"));
	                user.setCustomID(resultSet.getString("customID"));
	                user.setSapUsername(resultSet.getString("sapUsername"));
	                user.setSapPassword(resultSet.getString("sapPassword"));  
	                list.add(user);  
	            }  
	            request.setAttribute("list", list);  
	            resultSet.close();  
	            statement.close();  
	            conn.close();  
	  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	  
	        request.getRequestDispatcher("UserList.jsp").forward(request, response);  
	  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
