<%@page import="java.net.URLDecoder"%>
<%@page import="com.hwf.dao.GetInfoFromDatabaseDao"%>
<%@page import="com.hwf.bean.ProblemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.security.SecureRandom"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/content.css">
		<link rel="stylesheet" href="css/problem.css">
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/control.js"></script>
		<script src="js/manageProblem.js"></script>
		<script type="text/javascript">
			var xmlHttp;
			
			<%
				String queryString = request.getQueryString();
				if( queryString==null ){
					queryString = "";
				}else if( queryString.indexOf("pageNow")!=-1 ){
					queryString = queryString.substring(0,queryString.indexOf("pageNow"));
				}
				String url = request.getRequestURI()+"?"+queryString;
				
			%>
			
			function lastPage(){
				<%-- 上一页 --%>
				var _pageNow = document.getElementById("_pageNow");
				var string = _pageNow.value;
				var pageNow = new Number(string);
				
				if( pageNow==1 ){
					var pageError = document.getElementById("pageError");
					
					pageError.innerText = "当前已是第一页";
				}else{
					pageNow--;
					window.location.href = "<%=url%>pageNow="+pageNow;
				}
			}
			
			function nextPage(){
				<%-- 下一页 --%>
				var _pageNow = document.getElementById("_pageNow");
				var _totalPage = document.getElementById("_totalPage");
				var string1 = _pageNow.value;
				var pageNow = new Number(string1);
				var string2  = _totalPage.value;
				var totalPage = new Number(string2);
				
				if( pageNow>=totalPage ){
					var pageError = document.getElementById("pageError");
					pageError.innerText = "当前已是最后一页";
				}else{
					pageNow++;
					window.location.href = "<%=url%>pageNow="+pageNow;
				}
			}
		</script>
		<title>JXNU Online Judge</title>
		
		<%
			final String CHECK_SESSION = "checkSession";
			
			//产生随机数，用以验证是否为合法提交
			SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
			long seq = random.nextLong();
			String randomString = seq+"";
			session.setAttribute(CHECK_SESSION,randomString+"LL");
		%>
		<%
			String account = (String)session.getAttribute("account");
			String search = request.getParameter("search");
			if( search!=null ){ 
				search = URLDecoder.decode(search,"UTF-8");
			}else{
				search = "";
			}
			
			String _pageNow = request.getParameter("pageNow");
			int pageNow;
			try {
				pageNow = Integer.parseInt(_pageNow);
				if (pageNow < 1) {
					pageNow = 1;
				} else if (pageNow > GetInfoFromDatabaseDao.maxPage) {
					pageNow = GetInfoFromDatabaseDao.maxPage;
				}
			} catch (NumberFormatException e) {
				pageNow = 1;
			}
		
			ArrayList<ProblemBean> list = GetInfoFromDatabaseDao.getPidAndTitle(search,pageNow);
			long totalPage = GetInfoFromDatabaseDao.getProblemTotalPage(search);
		%>
	</head>
	<body onload="setAlive();">
		<div class="container">
			<jsp:include page="includeJSP/OJTitle.jsp"></jsp:include>
			
			<div class="outer">
				<table class="table table-striped" style="margin: 0 auto; width: 95%; text-align: center;background: rgb(238, 238, 238);border: 1px solid #DDDDDD;margin-top: 10px;"> 
					<thead>
						<tr class="toprow" align="center">
							<th style="text-align: center;">题目编号<br><br></th>
							<th style="text-align: center;">标题<br><input class="search custom-select" type="text" id="searchTitle" value="<%=search%>"></th>
							<th style="text-align: center;">来源<br><br></th>
							<th style="text-align: center;">正确<br><br></th>
							<th style="text-align: center;">提交<br><br></th>
							<th style="text-align: center;">通过率<br><br></th>
						</tr>
					</thead>
					<tbody>
						<%
							for( ProblemBean bean : list ){
						%>
						<tr>
							<th><%=bean.getPid()%></th>
							<th><a href="editproblem.jsp?pid=<%=bean.getPid()%>"><%=bean.getTitle()%></a></th>
							<th><%=bean.getOrigin()%></th>
							<th><%=bean.getOrigin()%></th>
							<th><%=bean.getOrigin()%></th>
							<th><%=bean.getOrigin()%></th>
						</tr>
						<%}%>
					</tbody>
				</table>
				
				<label class="error" style="text-align: center" id="pageError"><br></label><br>
				<input type="button" value="上一页" class="button" style="width: 10%; margin-right: 20px;" onclick="lastPage()">
				<label>第 <%=pageNow%> 页/共 <%=totalPage%> 页</label>
				<input type="button" value="下一页" class='button' style="width: 10%" onclick="nextPage()">
				<input type="hidden" id="_pageNow" name="_pageNow" value="<%=pageNow%>">
				<input type="hidden" id="_totalPage" value="<%=totalPage%>">
			</div>
		</div>
		
		<jsp:include page="includeJSP/OJTail.jsp"></jsp:include>
		<input type="hidden" id="type" value="manaPro">
	</body>
</html>