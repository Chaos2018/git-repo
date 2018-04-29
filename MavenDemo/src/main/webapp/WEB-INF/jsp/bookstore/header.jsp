<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
 <!-- header -->
         <div class="header">
       		<div class="logo"><a href="index.html"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.html">��ҳ</a></li>
         
            <li><a href="category.html">ͼ�����</a></li>
            <li><a href="specials.html">�Ƽ��鼮</a></li>
            <li><a href="myaccount.html">�ҵ��ʻ�</a></li>
            <li><a href="register.html">�û�ע��</a></li>
            <li><a href="details.html">�۸���Ϣ</a></li>
            <li><a href="contact.html">��ϵ����</a></li>
			   <li><a href="about.html">��������</a></li>
            </ul>
        </div>     
            
            
       </div> 
       <!-- header -->