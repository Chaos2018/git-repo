<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Store</title>
<%@ include file="/WEB-INF/jsp/frame/include.jsp"%>
</head>
<body>
	<!--start of right content-->
	<div class="right_content">
		<div class="languages_box">
			<span class="red">欢迎您：游客</span>
		</div>
		<div class="currency">
			<span class="red">您来自: </span> 222.14.112.1
		</div>
		<div class="cart">
			<div class="title">
				<span class="title_icon"><img src="images/cart.gif" alt=""
					title="" /></span>购物车
			</div>
			<div class="home_cart_content">
				2项商品 | <span class="red">总价：100 rmb</span>
			</div>
			<a href="cart.html" class="view_cart">查看购物车</a>

		</div>
		<div class="right_box">
			<div class="title">
				<span class="title_icon"><img src="images/bullet4.gif" alt=""
					title="" /></span>促销书籍
			</div>
			<div class="new_prod_box">
				<a href="details.html">书名</a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"
						alt="" title="" /></span> <a href="details.html"><img
						src="images/thumb1.gif" alt="" title="" class="thumb" border="0" /></a>
				</div>
			</div>

			<div class="new_prod_box">
				<a href="details.html">书名</a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"
						alt="" title="" /></span> <a href="details.html"><img
						src="images/thumb2.gif" alt="" title="" class="thumb" border="0" /></a>
				</div>
			</div>

			<div class="new_prod_box">
				<a href="details.html">书名</a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"
						alt="" title="" /></span> <a href="details.html"><img
						src="images/thumb3.gif" alt="" title="" class="thumb" border="0" /></a>
				</div>
			</div>
		</div>
		<div class="right_box">
			<div class="title">
				<span class="title_icon"><img src="images/bullet5.gif" alt=""
					title="" /></span>书籍分类
			</div>
			<ul class="list">
				<li><a href="#">哲学</a></li>
				<li><a href="#">文学</a></li>
				<li><a href="#">经济</a></li>
				<li><a href="#">管理</a></li>
				<li><a href="#">建筑</a></li>
				<li><a href="#">计算机</a></li>
				<li><a href="#">法律</a></li>
				<li><a href="#">儿童书籍</a></li>
				<li><a href="#">教材</a></li>
			</ul>
			<div class="title">
				<span class="title_icon"><img src="images/bullet6.gif" alt=""
					title="" /></span>合作伙伴
			</div>
			<ul class="list">
				<li><a href="#">成都信息工程大学</a></li>
				<li><a href="#">清华大学出版社</a></li>
				<li><a href="#">当当网</a></li>
				<li><a href="#">淘宝网</a></li>
			</ul>
		</div>
	</div>
	<!--end of right content-->
</body>
</html>