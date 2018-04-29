<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="<c:url value='/resources/js/commonValidate.js'/>" type="text/javascript" ></script>
 <link href="<c:url value='/resources/css/blue/css/conn.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/resources/css/blue/css/layout.css'/>" rel="stylesheet" type="text/css" />
<div style="width:100%;float:left;">
	<div class="table_cutpage_box">
		<div class="f_right">
	    	<font class="cutpage_stat">    
	    		<label id="uiCurrentPage" style="display:none;"></label>
	    		<label id="uiTotalPages" style="display:none;"></label>
	    		<label id="uiDataCount"></label>
	    	</font>
	    	<div class="s_detail_cutpage_new">     
	      		<div class="f_left" style="margin-right:10px;">    
	           		<i class="f_left">
	             		<input id="txtGo" name="input" type="text" class="txt_input" maxLength="5" style="width: 50px;" onkeyup="checkInputNumber(this)"/>
	           		</i>
	           		<i id="arrowLeft" class="s_cutpage_go" style="width:23px; margin:0;" onclick="javascript:navPage('txtGo');">GO</i>
	       		</div>
	       		<i id="arrowLeft" class="s_cutpage_arrowleft_new" style="width:23px;" onclick="javascript:navPage('lt');"></i>
	       		<div id="uiPages" class="f_left">   
	       		</div>
	       		<i id="arrowRight" class="s_cutpage_arrowright_new" style="width:23px;" onclick="javascript:navPage('nt');"></i>
	    	</div>
	   	</div>
	</div>
</div>
<script type="text/javascript">
	var strPage = '<a href="javascript:navPage(t_num)">t_num</a>';
	var strStartPage = '<a href="javascript:navPage(1)">1...</a>';
	var strEndPage = '<a href="javascript:navPage(t_num)">...t_num</a>';
	var spanPage = '<span class="current">t_num</span>';

	var paramsAsynPage;
	//page
	function navPage(t)
	{
		var currPage = parseInt(document.getElementById('uiCurrentPage').innerHTML);
		var totalPages = parseInt(document.getElementById('uiTotalPages').innerHTML);
				
		//上一页
		if(t=='lt')
		{
			if(currPage>1)
			{				
				var reqPage = currPage - 1;
				execQuery(''+reqPage,paramsAsynPage);
			}
			else
			{
				alert('已到达首页');
			}
			return;
		}
		//下一页
		if(t=='nt')
		{
			if(currPage<totalPages)
			{
				var reqPage = currPage + 1;
				execQuery(''+reqPage,paramsAsynPage);
			}
			else
			{
				alert('已到达末页');
			}
			return;
		}
		if(t=='txtGo')
		{
			if(document.getElementById('txtGo').value=='')
			{
				alert("输入页码");
				return;
			}
			var goPage = parseInt(document.getElementById('txtGo').value);
			if(goPage==currentPage)
			{
				return;
			}
			if(goPage<1||goPage>totalPages)
			{
				alert("超出分页范围");
			}
			else
			{
				execQuery(''+goPage,paramsAsynPage);
			}			
			return;
		}
		else
		{
			var reqPage = parseInt(t);
			execQuery(''+reqPage,paramsAsynPage);
			return;
		}
	}

	/**
	 * 验证输入的是否是数字
	 * @param obj
	 */
	function checkInputNumber(obj)
	{
		if(!isDigital(obj.value))
		{
			alert('请输入数字');
			obj.value='';
			obj.focus();
			return;
		}
	}

	function clearPageCountCallback(pager)
	{
		var currentPage = pager.currentPage;
		var totalPages = pager.totalPages;
		document.getElementById('uiCurrentPage').innerHTML = currentPage;
		document.getElementById('uiTotalPages').innerHTML = totalPages;
		
		var pageArray = [];
		//小于等于5个分页
		if (totalPages <= 5)
		{
			for (var i = 1; i <= totalPages; i++)
			{
				pageArray.push(i);
			}
		//大于5个分页
		}
		else
		{
			//当前分页小于等于3
			if (currentPage <= 3)
			{
				for (var i = 1; i <= 5; i++)
				{
					pageArray.push(i);
				}
			//当前分页大于3
			}
			else
			{
				//总分页减去当前分页小于等于2
				if (totalPages - currentPage <= 2)
				{
					for (var i = totalPages - 4; i <= totalPages; i++)
					{
						pageArray.push(i);
					}
				//总分页减去当前分页大于2
				}
				else
				{
					for (var i = currentPage - 2; i <= currentPage + 2; i++)
					{
						pageArray.push(i);
					}
				}
			}
		}
		
		jQuery("#uiPages").empty();
		if (currentPage > 3)
		{
			jQuery("#uiPages").append(strStartPage);
		} 
		for (var i = 0; i < pageArray.length; i++)
		{
			var template = "";
			if (currentPage == pageArray[i])
			{
				template = spanPage;
				template = template.replace(/t_num/g, pageArray[i]);								
			}
			else
			{
				template = strPage;
				template = template.replace(/t_num/g, pageArray[i]);			
			}
			jQuery("#uiPages").append(template);
		}
		if (totalPages - currentPage > 2)
		{
			template = strEndPage;
			template = template.replace(/t_num/g, totalPages);	
			jQuery("#uiPages").append(template);
		}
	}
	/**********************************************/
	/*** 请在自己的页面实现execQuery()方法
	/*** function execQuery(reqPage,paramsAsynPage);
	/**********************************************/
</script>