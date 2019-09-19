<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.lang.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
}); 

});
</script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
<script>
$(function(){	
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/sale/queryMarketingci.do",
			async:true,
			dataType: "json",
			success:function(data){
				//画表格
				build_sale_table(data);
			},error:function(data){
				alert("shibai");
			}
		});
	}
	);
function build_sale_table(data){
	//清空table表格
	//$("databody").empty();
	var sale = data.extend.pageInfo.list;
	var v = $("<table border=1 width='500px' height='300px' align='center'>");
	v.append($("<tr><td>客户名称</td><td>概要</td><td>联系人</td><td>联系人电话</td><td>操作</td></tr>"));
	v.append($("</table>"));
	
	var th1 = $("<th></th>").append("客户名称");
	var th2 = $("<th></th>").append("概要");
	var th3 = $("<th></th>").append("联系人");
	var th4 = $("<th></th>").append("联系人电话");
	var th5 = $("<th></th>").append("操作");
	var tr1 = $("<tr></tr>").append(th1).append(th2).append(th3).append(th4).append(th5);
	var tab = $("<table></table>").append(tr1);

	$.each(sale,function(index,item){
		var marketingci_cname = $("<td></td>").append(item.marketingci_cname);
		var marketingci_outline = $("<td></td>").append(item.marketingci_outline);
		var marketingci_contacts = $("<td></td>").append(item.marketingci_contacts);
		var marketingci_tel = $("<td></td>").append(item.marketingci_tel);
		var editBtn=$("<button></button>").append($("<span></span>")).append("编辑");
		var delBtn=$("<button></button>").append($("<span></span>")).append("删除");
		var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
		var tr = $("<tr></tr>").append(marketingci_cname)
			.append(marketingci_outline)
			.append(marketingci_contacts)
			.append(marketingci_tel)
			.append(btnTd);
		tab.append(tr).appendTo("#databody");
	});	
	//$("#databody").html(v);
	/*$.each(data.extend.pageInfo.navigatepageNums,function(index,item){
		var numLi = $("<li></li>").append($("<a></a>").append(item));
		//如果当前页码item就是result中pageNum的页码
		if(result.extend.pageInfo.pageNum == item){
			//应该添加一个活动标识
			numLi.addClass("active");
		}
		numLi.click(function(){
			to_page(item);	
		})
		ul.append(numLi);	
	});*/
}
</script>

</head>


<body id="databody">
</body>

</html>
