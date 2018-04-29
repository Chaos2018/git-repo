<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book Store</title>
<%@ include file="/WEB-INF/jsp/frame/include.jsp"%>
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<div class="header">
			<div class="logo">
				<a href="<c:url value='index.html'/>"><img
					src="<c:url value='/resources/images/logo.gif'/>" alt="" title="" border="0" /></a>
			</div>
			<div id="menu">
				<ul>
					<li><a href="/">首页</a></li>

					<li><a href="category.html">图书分类</a></li>
					<li><a href="specials.html">推荐书籍</a></li>
					<li><a href="myaccount.html">我的帐户</a></li>
					<li class="selected"><a href="register.html">用户注册</a></li>
					<li><a href="details.html">价格信息</a></li>
					<li><a href="contact.html">联系我们</a></li>
					<li><a href="about.html">关于我们</a></li>
				</ul>
			</div>
		</div>
		<!-- header -->
		<div class="center_content">
			<div class="left_content">
				<div class="title">
					<span class="title_icon"><img
						src="<c:url value='/resources/images/bullet1.gif'/>" alt="" title="" /></span>用户注册
				</div>

				<div class="feat_prod_box_details">
					<p class="details">
						欢迎您注册为本网站的会员，请在下面表单填写注册信息，要求每项必填，信息务必真实，方便我们联系您，谢谢！</p>

					<div class="contact_form">
						<div class="form_subtitle">创建新账户</div>
						<form name="register" action="#">
							<div class="form_row">
								<label class="contact"><strong>用户名:</strong></label> <input
									type="text" class="contact_input" />
							</div>


							<div class="form_row">
								<label class="contact"><strong>密码:</strong></label> <input
									type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<label class="contact"><strong>密码确认:</strong></label> <input
									type="text" class="contact_input" />
							</div>

							<div class="form_row">
								<label class="contact"><strong>电子邮件:</strong></label> <input
									type="text" class="contact_input" />
							</div>
							<div class="form_row">
								<label class="contact"><strong>电话:</strong></label> <input
									type="text" class="contact_input" />
							</div>
							<div class="form_row">
								<label class="contact"><strong>地址:</strong></label> <input
									type="text" class="contact_input" />
							</div>
							<div class="form_row">
								<div class="terms">
									<input type="checkbox" name="terms" /> 我同意 <a href="#">相关协议和政策</a>
								</div>
							</div>
							<div class="form_row">
								<input type="submit" class="register" value="注册" />
							</div>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!--end of left content-->
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
						<span class="title_icon"><img
							src="<c:url value='/resources/images/cart.gif'/>" alt="" title="" /></span>购物车
					</div>
					<div class="home_cart_content">
						2项商品 | <span class="red">总价：100 rmb</span>
					</div>
					<a href="cart.html" class="view_cart">查看购物车</a>

				</div>
				<div class="right_box">
					<div class="title">
						<span class="title_icon"><img
							src="<c:url value='/resources/images/bullet4.gif'/>" alt="" title="" /></span>促销书籍
					</div>
					<div class="new_prod_box">
						<a href="details.html">书名</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="<c:url value='/resources/images/promo_icon.gif'/>" alt="" title="" /></span> <a
								href="details.html"><img src="<c:url value='/resources/images/thumb1.gif'/>"
								alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">书名</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="<c:url value='/resources/images/promo_icon.gif'/>" alt="" title="" /></span> <a
								href="details.html"><img src="<c:url value='/resources/images/thumb2.gif'/>"
								alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>

					<div class="new_prod_box">
						<a href="details.html">书名</a>
						<div class="new_prod_bg">
							<span class="new_icon"><img
								src="<c:url value='/resources/images/promo_icon.gif'/>" alt="" title="" /></span> <a
								href="details.html"><img src="<c:url value='/resources/images/thumb3.gif'/>"
								alt="" title="" class="thumb" border="0" /></a>
						</div>
					</div>

				</div>
				<div class="right_box">
					<div class="title">
						<span class="title_icon"><img
							src="<c:url value='/resources/images/bullet5.gif'/>" alt="" title="" /></span>书籍分类
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
						<span class="title_icon"><img
							src="<c:url value='/resources/images/bullet6.gif'/>" alt="" title="" /></span>合作伙伴
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
			<div class="clear"></div>
		</div>
		<!--end of center content-->
		<!-- footer -->
		<div class="footer">
			<div class="left_footer">
				<img src="<c:url value='/resources/images/footer_logo.gif'/>" alt="" title="" /><br />
				<a href="http://csscreme.com/freecsstemplates/"
					title="free templates"><img src="<c:url value='/resources/images/csscreme.gif'/>"
					alt="free templates" title="free templates" border="0" /></a>
			</div>
			<div class="right_footer">
				<a href="#">首页</a> <a href="#">关于我们</a> <a href="#">服务</a> <a
					href="#">隐私政策</a> <a href="#">联系我们</a>

			</div>
		</div>
		<!--end footer -->
	</div>
	<p>
	<c:url value="http://www.baidu.com" />
	<a href="<c:url value="./testParamImported.jsp">
		  <c:param name="username" value="yangmu"></c:param>
		  <c:param name="password" value="hello"></c:param>
		  </c:url>">跳转页面</a>
	</p>
	<a href="<c:url value="http://www.baidu.com">
		  <c:param name="word" value="nba"></c:param>
		  </c:url>">使用百度搜索关键字Java</a>
	</p>
	<c:url value="http://www.baidu.com" var="baidu" scope="session">
		<c:param name="word" value="Java"></c:param>
	</c:url>
	显示超链接：<br>
	<a href="${pageScope.baidu}">使用百度搜索关键字Java</a>
</body>
</html>