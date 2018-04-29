<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String desc=request.getParameter("desc")==null?"":request.getParameter("desc");
%>
<table cellSpacing="2" width="100%" border="0" style="height:25px;" class="symbol_table">
	<tbody style="vertical-align:top; font-size:12px;">
		<tr>
			<td width="35%" align="left">&nbsp;<%=desc%></td>
			<td width="65%" align="right">
				查询结果:共计<b id="multiCount">0</b>条&nbsp;
				当前页<b id="currPage">0</b>/共<b id="totalPage">0</b>页&nbsp;&nbsp;
				<input id="st" type="button" value="首页" class="button" onclick="javascript:navPage('st');"/>
				<input id="lt" type="button" value="上一页" class="button" onclick="javascript:navPage('lt');"/>
				<input id="nt" type="button" value="下一页" class="button" onclick="javascript:navPage('nt');"/>
				<input id="ed" type="button" value="末页" class="button" onclick="javascript:navPage('ed');"/>
				<input id="txtGo" type="text" style="width: 30px; height: 20px" size="2" maxLength="3" onkeyup="checkInput(this)"/>
				<input id="btnGo" type="button" value="GO" class="button" style="width: 25px;" onclick="navPage(txtGo)"/>
			</td>
		</tr>
	</tbody>
</table>
<script>
	//page
	function navPage(t)
	{
		var currPage = document.getElementById('currPage');
		var totalPage = document.getElementById('totalPage');
		var iCurrPage = parseInt(currPage.innerText);
		var iTotalPage = parseInt(totalPage.innerText);
		//首页
		if(t=='st')
		{
			if(iCurrPage == 1 || iCurrPage == 0)
			{
				alert('已到达首页');
				return;
			}
			execQuery('1');
			currPage.innerText = 1;
			return;
		}
		//上一页
		if(t=='lt')
		{
			if(iCurrPage>1)
			{
				var reqPage = iCurrPage - 1;
				execQuery(''+reqPage);
				currPage.innerText = reqPage;
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
			if(iCurrPage<iTotalPage)
			{
				var reqPage = iCurrPage + 1;
				execQuery(''+reqPage);
				currPage.innerText = reqPage;
			}
			else
			{
				alert('已到达末页');
			}
			return;
		}
		//末页
		if(t=='ed')
		{
			if(iCurrPage==iTotalPage)
			{
				alert('已到达末页');
				return;
			}
			execQuery(''+iTotalPage);
			currPage.innerText = iTotalPage;
		   	return;
		}

		var tVal = t.value;

		if(tVal!='undefined')
		{
	    	if(tVal>0 && tVal<iTotalPage+1)
	    	{
		        if(tVal==iCurrPage)
		        {
                	return;
			    }
				currPage.innerText = tVal;
				execQuery(''+tVal);
			}
	    	else
	    	{
				alert("请输入合理的页数!");
				t.value="";
				return;
			}
		}
	}

	function isDigital(elementValue)
	{
		var rep = /\D/;
		return !(elementValue != '' && rep.test(elementValue));
	}
	function checkInput(obj)
	{
		if(!isDigital(obj.value))
		{
			alert('请输入数字');
			obj.value='';
			obj.focus();
			return;
		}
	}

	function clearPageCountCallback(pageBean)
	{
		if(pageBean.totalPages>0)
		{
			document.getElementById('currPage').innerText = pageBean.currentPage;
		}
		document.getElementById('totalPage').innerText = pageBean.totalPages;
		document.getElementById('multiCount').innerHTML=pageBean.totalRows;
		if(pageBean.totalRows==0)
		{
			document.getElementById('currPage').innerHTML=0;
		}
		//分页按钮禁用判断
		if(pageBean.currentPage==0||pageBean.currentPage==1)
		{
          	document.getElementById('st').disabled=true;
          	document.getElementById('lt').disabled=true;
	    }
		else
		{
	      	document.getElementById('st').disabled=false;
	      	document.getElementById('lt').disabled=false;
		}
	    if(pageBean.currentPage==pageBean.totalPages)
	    {
	      	document.getElementById('nt').disabled=true;
	      	document.getElementById('ed').disabled=true;
		}
	    else
	    {
		  	document.getElementById('nt').disabled=false;
		  	document.getElementById('ed').disabled=false;
	    }
		if(pageBean.totalPages==0||pageBean.totalPages==1)
		{
		  	document.getElementById('txtGo').disabled=true;
		  	document.getElementById('btnGo').disabled=true;
		}
		else
		{
		  	document.getElementById('txtGo').disabled=false;
		  	document.getElementById('btnGo').disabled=false;
		}
	}
	/**********************************************/
	/*** 请在自己的页面实现execQuery()方法
	/*** function execQuery(reqPage);
	/**********************************************/
</script>