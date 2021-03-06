<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html>

<head>
<title>blog-login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 设配移动端 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Custom Theme files -->
<link rel="stylesheet" href="<c:url value="/style/css/reset.css"/>"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/style/css/background.css"/>"
	type="text/css">

</head>

<body>
	<header id="header">
		<div class="logo">博客后台管理系统</div>
		<nav class="navigation">
			<ul>
				<li>欢迎您！</li>
				<li></li>
				<li><a href="/SignOut">退出</a></li>
			</ul>
		</nav>
	</header>
	<section id="content">
		<nav class="left_menu">
		<ul id="nav_dot">
				<li>
					<h4 class="M1">
						<span></span>后台设置
					</h4>
					<div class="list-item">
						<a href="/doModify">基本资料</a> <a href="/doUser">密码修改</a>
					</div>
				</li>
				<li>
					<h4 class="M2">
						<span></span>博文管理
					</h4>
					<div class="list-item none">
						<a href="admin/doMarticle?currPage=1">文章管理</a> <a
							href="admin/doCatagory?currPage=1">类别管理</a> <a
							href="admin/doReply?currPage=1">评论管理</a> <a
							href="admin/doPublish">写新文章</a>
					</div>
				</li>
				<li>
					<h4 class="M3">
						<span></span>DEMO管理
					</h4>
					<div class="list-item none">
						<a href="admin/doDemo?currPage=1">DEMO列表</a> <a
							href="admin/doDemoPublish">新增DEMO</a>
					</div>
				</li>
			</ul>
		</nav>
		<div class="m-right">
			<div class="right-nav">
				<ul class="nav-list">
					<li>您当前的位置</li>
					<li>&nbsp;>&nbsp;</li>
					<li class="write-article">写新文章</li>
				</ul>
			</div>
			<div class="main">
				<form action="/updateUser" method="post">
					<input type="hidden" name="id" value="${user.id}" /> 
					<table class="insert-tab">
						<tbody>
							<tr class="tr">
								<th><i class="require-red">*</i>email：</th>
								<td><input class="content-title" id="email" name="email"
									size="50" value="${user.email}" type="text"></td>
							</tr>
							<tr class="tr">
								<th><i class="require-red">*</i>qq：</th>
								<td><input class="content-title" id="qq" name="qq"
									size="50" value="${user.qq }" type="text"></td>
							</tr>
							<tr class="tr">
								<th><i class="require-red">*</i>phone：</th>
								<td><input class="content-title" id="phone" name="phone"
									size="50" value="${user.phone}" type="text"></td>
							</tr>
							<tr class="tr">
								<th>简介：</th>
								<td><textarea name="info" class="content-textarea"
										cols="80" rows="10" placeholder="文章内容..."> ${user.info} </textarea></td>
							</tr>
							<tr class="tr">
								<th></th>
								<td><input class="article-btn-push" value="保存"
									type="submit"> <input class="article-btn-back"
									onclick="history.go(-1)" value="返回" type="button"></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</section>
	<footer id="footer">
		<p>Copyright &copy; 2017 JUN. All Rights Reserved.</p>
	</footer>
	<script src="<c:url value="/style/js/jquery-1.8.3.min.js"/>"></script>
	<script src="<c:url value="/style/js/menu.js"/>"></script>
</body>

</html>
