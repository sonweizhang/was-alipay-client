<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	String path = request.getContextPath(); %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/common/global.jsp" %>
<link href="${ctx}/static/css/advertiseAlipay/base.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/css/advertiseAlipay/advercss.css" type="text/css" rel="stylesheet"/>
<script src="<%=staticPath %>js/plugin/artDialogImg/artDialog.js?skin=default"></script>
<script src="<%=staticPath %>js/plugin/artDialogImg/plugins/iframeTools.js"></script>
<script type="text/javascript">
	function hasPay(){
		 parent.location.href='<%=memberWebPath%>/coin/toCoinDetailMessage';
	}
	
	function hasProblem(){
		window.open("http://help.99114.com");
		dialogClose();
	}
	
	function dialogClose(){
		art.dialog.close();
	}
</script>

<div class="order_pop w455">
	<h2 class="order_pop_tit">
    	<span class="fl">支付</span>
        <a href="javascript:void(0);" onclick="dialogClose();"></a>
    </h2>
	<div class="order_popcon">
    	<div class="nei_box">
          <p><b>付款完成前请不要关闭此窗口。</b></p>
          <p>完成付款后请根据您的情况点击下面的按钮。</p>
           <p class="mt10"><a class="new_addbut calc_but fl" href="javascript:void(0);" onclick="hasPay();">已完成付款</a><a class="new_addbut calc_but fl ml10 hui_butcon" href="javascript:void(0);" onclick="hasProblem();">付款遇到问题</a></p>
        </div>
    </div>
</div>


	
