<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/client/js/my.js"></script> --%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>

<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=书籍">书籍</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=零食">零食</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=自行车">自行车</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=衣物">衣物</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=杯子">杯子</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=椅子">椅子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=饰品">饰品</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=手机">手机</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=电脑">电脑</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=健身">健身</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=电子">电子</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=考研">考研</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=大四汇">大四汇</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=生活">生活</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage" style="color:#FFFF00">全部商品目录</a>
		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchSerlvet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				搜 索 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入查询的物品名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>