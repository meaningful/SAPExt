<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
 <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src="js/jquery-1.11.0.min.js"></script>
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="js/i18n/grid.locale-cn.js"></script>
    <!-- This is the Javascript file of jqGrid -->
    <script type="text/ecmascript" src="js/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	首页显示内容
	<br>

<a href="hello"> 使用get的方式请求 helloworld servlet  </a>


<form action="hello" method="post">
    请输入内容：<br>
    用户名：<input type="text" name="username">
    <br>
    密码：<input type = "text" name = "passwd">
    <input type="submit" value="提交">	
</form>


    <table id="navgrid"></table>
    <div id="pagernav"></div>
    
    <script type="text/javascript">
    
    $(function(){
    	  pageInit();
    	});
    	function pageInit(){
    	  jQuery("#navgrid").jqGrid(
    	      {
    	        url : '/Loadgrid',    <%@page import="java.sql.SQLException"%>  
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
    	                    if (name.value == "") {  
    	                        alert("图书名称不能为空");  
    	                        return false;  
    	                    }  
    	          
    	                    if (price.value == "") {  
    	                        alert("图书价格不能为空");  
    	                        return false;  
    	                    }  
    	          
    	                    if (author.value == "") {  
    	                        alert("作者不能为空");  
    	                        return false;  
    	                    }  
    	          
    	                }  
    	            }  
    	        </script>  
    	          
    	        </head>  
    	          
    	          
    	        <body>  
    	          
    	        <form action="addbook.jsp" method="post" onsubmit="check(this)">  
    	            <table align="center" width="450">  
    	                <tr>  
    	                    <td align="center" colspan="2">  
    	                        <h2>添加图书信息</h2>  
    	                        <hr>  
    	                    </td>  
    	                </tr>  
    	          
    	                <tr>  
    	                    <td align="right">图书名称：</td>  
    	                    <td><input type="text" name="name"></td>  
    	                </tr>  
    	          
    	                <tr>  
    	                    <td align="right">价 格：</td>  
    	                    <td><input type="text" name="price"></td>  
    	                </tr>  
    	          
    	                <tr>  
    	                    <td align="right">数 量：</td>  
    	                    <td><input type="text" name="bookCount" /></td>  
    	                </tr>  
    	          
    	                <tr>  
    	                    <td align="right">作 者：</td>  
    	                    <td><input type="text" name="author" /></td>  
    	                </tr>  
    	                <tr>  
    	                    <td align="center" colspan="2"><input type="submit" value="添　加">  
    	                    </td>  
    	                </tr>  
    	            </table>  
    	        </form>  
    	          
    	        <h2 align="center">  
    	            <a href="FindServlet">查询图书信息</a>  
    	        </h2>  
    	          
    	        </body>  
    	        </html>  
    	        datatype : "json",
    	        colNames : [ 'Inv No', 'Date', 'Client', 'Amount', 'Tax',
    	            'Total', 'Closed', 'Ship via', 'Notes' ],
    	        colModel : [
    	                    {name : 'id',index : 'id',width : 55,editable : false,editoptions : {readonly : true,size : 10}},
    	                    {name : 'invdate',index : 'invdate',width : 80,editable : true,editoptions : {size : 10}},
    	                    {name : 'name',index : 'name',width : 90,editable : true,editoptions : {size : 25}},
    	                    {name : 'amount',index : 'amount',width : 60,align : "right",editable : true,editoptions : {size : 10}},
    	                    {name : 'tax',index : 'tax',width : 60,align : "right",editable : true,editoptions : {size : 10}},
    	                    {name : 'total',index : 'total',width : 60,align : "right",editable : true,editoptions : {size : 10}},
    	                    {name : 'closed',index : 'closed',width : 55,align : 'center',editable : true,edittype : "checkbox",editoptions : {value : "Yes:No"}},
    	                    {name : 'ship_via',index : 'ship_via',width : 70,editable : true,edittype : "select",editoptions : {value : "FE:FedEx;TN:TNT"}},
    	                    {name : 'note',index : 'note',width : 100,sortable : false,editable : true,edittype : "textarea",editoptions : {rows : "2",cols : "20"}}
    	                  ],
    	        rowNum : 10,
    	        rowList : [ 10, 20, 30 ],
    	        pager : '#pagernav',
    	        sortname : 'id',
    	        viewrecords : true,
    	        sortorder : "desc",
    	        caption : "Navigator Example",
    	        editurl : "/RowEditing",
    	        height : 210
    	      });
    	  jQuery("#navgrid").jqGrid('navGrid', '#pagernav',
    	      {}, //options
    	      {height : 300,reloadAfterSubmit : false}, // edit options
    	      {height : 300,reloadAfterSubmit : false}, // add options
    	      {reloadAfterSubmit : false}, // del options
    	      {}// search options
    	  );
    	}
    	
    </script>
</body>
</html>	