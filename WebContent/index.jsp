    <%@page import="java.sql.SQLException"%>  
    <%@page import="java.sql.DriverManager"%>  
    <%@page import="java.sql.Connection"%>  
    <%@ page language="java" contentType="text/html; charset=utf-8"  
        pageEncoding="utf-8"%>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
    <title>添加SAP账户信息</title>  
      
    <script type="text/javascript">  
        function check(form) {  
            with (form) {  
                if (customID.value == "") {  
                    alert("身份证信息不能为空");  
                    return false;  
                }  
      
                if (sapUsername.value == "") {  
                    alert("账户名不能为空");  
                    return false;  
                }  
      
                if (sapPassword.value == "") {  
                    alert("密码不能为空");  
                    return false;  
                }  
      
            }  
        }  
    </script>  
      
    </head>  
      
      
    <body>  
      
    <form action="addUser.jsp" method="post" onsubmit="check(this)">  
        <table align="center" width="450">  
            <tr>  
                <td align="center" colspan="2">  
                    <h2>添加SAP账户信息</h2>  
                    <hr>  
                </td>  
            </tr>  
      
            <tr>  
                <td align="right">身份证号：</td>  
                <td><input type="text" name="customID" id="customID"></td>  
            </tr>  
      
            <tr>  
                <td align="right">SAP用户名：</td>  
                <td><input type="text" name="sapUsername" id="sapUsername"></td>  
            </tr>  
      
            <tr>  
                <td align="right">SAP加密后的密码：</td>  
                <td><input type="text" name="sapPassword" id="sapPassword"/></td>  
            </tr>  
            <tr>  
                <td align="center" colspan="2"><input type="submit" value="添　加">  
                </td>  
            </tr>  
        </table>  
    </form>  
      
    <h2 align="center">  
        <a href="FindUserServlet">所有SAP账户对应信息</a>  
    </h2>  
      
    </body>  
    </html>  