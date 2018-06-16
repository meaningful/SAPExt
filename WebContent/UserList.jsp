<!--<%@page import="sun.awt.SunHints.Value"%>-->  
<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
  
<%@page import="java.util.List"%>  
<%@page import="bean.UserInfo"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title>所有SAP账户信息</title>  
<style type="text/css">  
td {  
    font-size: 12px;  
}  
  
h2 {  
    margin: 0px  
}  
</style>  
<script type="text/javascript">  
    function check(form) {  
        with (form) {  
            if (bookCount.value == "") {  
                alert("请输入更新数量！");  
                return false;  
            }  
            if (isNaN(bookCount.value)) {  
                alert("格式错误！");  
                return false;  
            }  
            return true;  
        }  
    }  
</script>  
  
  
</head>  
<body>  
    <table align="center" width="450" border="1" height="180"  
        bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">  
        <tr bgcolor="white">  
            <td align="center" colspan="7">  
                <h2>所有SAP账户对应信息</h2>  
            </td>  
        </tr>  
        <tr align="center" bgcolor="#e1ffc1">  
            <td><b>ID</b></td>  
            <td><b>身份证号</b></td>  
            <td><b>SAP账号</b></td>  
            <td><b>SAP密码密文</b></td>    
            <td><b>修改</b></td>  
            <td><b>删除</b></td>  
        </tr>  
        <%  
            // 获取SAP账户信息集合  
            List<UserInfo> list = (List<UserInfo>) request.getAttribute("list");  
            // 判断集合是否有效  
            if (list == null || list.size() < 1) {  
                out.print("没有数据！");  
            } else {  
                // 遍历SAP账户集合中的数据  
                for (UserInfo user : list) {  
        %>  
        <tr align="center"  bgcolor="white">  
            <td><%=user.getId()%></td>  
            <td><%=user.getCustomID() %></td>  
            <td><%=user.getSapUsername()%></td>  
            <td><%=user.getSapPassword()%></td>    
            <td >  
                <form style="align:center;  background-color: gray" action="UpdateUserServlet" method="post"  
                    onsubmit="return check(this);">  
                     <input type="hidden" name="id" value="<%=user.getId()%>"> 
                     <input type="text" name="sapPassword" size="3">  
                     <input type="submit" value="修改密码">  
                </form>  
            </td>  
            <td>  
            <a href="DeleteUserServlet?id=<%=user.getId()%>">删除</a>  
            </td>  
  
  
        </tr>  
        <%  
            }  
            }  
        %>  
    </table>  
    <h2 align="center">  
        <a href="index.jsp">返回添加SAP账户信息页面</a>  
    </h2>  
  
</body>  
</html>  </html>