<%
	/* *
	 *功能：支付宝即时到账交易接口调试入口页面
	 *版本：3.3
	 *日期：2012-08-17
	 *说明：
	 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
	 */
%>
<%	String path = request.getContextPath(); %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/common/global.jsp" %>
<link href="${ctx}/static/js/plugin/validation/style.css" type="text/css" rel="stylesheet" />
<link href="<%=staticPath %>menu/css/base.css" type="text/css" rel="stylesheet" />
<link href="<%=staticPath %>menu/css/layout.css" type="text/css" rel="stylesheet"/>
<title>充值</title>
</head>
<%-- <body>
	<div class="disNo login_h">
    	<div class="g-hd">
    		<a href="#" class="logo"></a>
    		<div class="br"></div>
    		<span class="tips">库币充值</span>
    	</div>
	</div> 
	<div class="kubiUse kubiUse2">
    	库币可用于购买开通本站增值服务，不可购买商品或提现。<!--  与人民币的兑换比例为<span class="bili">${ratio}：1</span>-->
    </div>
    <form name="alipayment" action="${ctx}/coinAlipay/alipayapi" method="post" id="coinAlipayForm" target="_blank">
	<div class="con_div calc_com kubiNum">
    	<P>库币余额：<span class="bdRed">${memberCoin.coinBalance==null?0:memberCoin.coinBalance}</span></P>
        <P class="mt10">充值金额（￥）：<input type="text" id="totalfee" name="WIDtotal_fee" class="comIpt czNum" datatype="number" nullmsg="请输入非零正整数" errormsg="数据内容有误，请输入非零正整数，如10，100" maxlength="8"/></P>
        <P class="mt10" id="topup" style="display: none;">充值数量：<span class="bdRed" ></span>&nbsp;个</P>
        <P class="mt20"><span class="bdRed">&nbsp;&nbsp;注：当前库币和人民币的比例是1:1</span></P>
    </div> 
     <!--con_div end--> 
     <div class="con_div calc_com">
            <div class="produ_div"><a href="#">支付工具</a></div><!--produ_div end-->
            <ul class="calc_list pes_calc">
              <li><input type="radio"  name="" checked="checked"/><img src="${ctx}/static/images/gs_zf.gif" /></li>
            </ul>
     </div> 
     <!--con_div end-->
     <div class="calc_div calc_com textC"><input class="new_addbut pay_but" id="alipaySubmit" type="submit" value="立即充值"/></div>
     
      </form>
     <div class="kubiUse tishi" style="margin-bottom:90px">
     	<P class="tsBd">温馨提示：</P>
        <P>1、库币没有有效期。</P>
        <P>2、充值成功后，请及时查看库币余额变化。</P>
        <P>3、如有任何疑问，请联系客服：40018-99114。</P>
     </div>
     <!-- 提示 begin -->
	     <div class="order_turepop" id="payTips" style="display: none;">
	       <div class="cont"><a href="<%=menuMemberPath%><%=memberWebPath%>/coinDetail/toCoinDetailMessage" class="czSuc">充值成功</a>&nbsp;|&nbsp;<a href="http://help.99114.com" class="czQues">充值遇到问题？</a></div>    
	     </div>
     <div class="footer" style="position: fixed; bottom: 0px;">
		<p>@1999-2013 中国网库 ALL rights reserved</p>
	</div>
	<%@ include file="/common/baiduCount.jsp" %>
</body> --%>
<body>
	<div class="w840">
		<div class="title-s">
			<p>库币充值</p>
		</div>
		<div class="tipsBox-style mt10">
			<p>
				<span class="zd_clearance">库币可用于购买开通本站增值服务，但是不可提现。</span>
			</p>
		</div>
		<form name="alipayment" action="${ctx}/alipayapi" method="post" id="coinAlipayForm" target="_blank">
		<div class="calc_com mt10">
			<p class="mt10">库币余额：${memberCoin.coinBalance==null?0:memberCoin.coinBalance}</p>
			<p>充值金额：<input type="text" class="yj_tex_a mr10" id="totalfee" name="WIDtotal_fee" maxlength="8" nullmsg="请输入非零正整数" errormsg="数据内容有误，请输入非零正整数，如10，100"  datatype="number" />元
				<span class="Validform_checktip"></span>
			</p>
			<p class="kb-num"></p>
			<p class="att_p">注：当前库币和人民币的比例是1:1</p>
   	    </div>
		<div class="Pay-trea">
           <ul class="calc_list">
              <li>
			 	 <p>支付：<span>0</span>&nbsp;元</p>
			  	 <input type="radio" name="" checked="checked"/><img src="<%=staticPath %>menu/images/gs_zf.gif" />
			</li>
            </ul>
     	</div>  
		<p class="textC mt30"><a href="#" id="alipaySubmit" class="yj_w119" title="下一步">下一步</a></p>
		</form>
		<div class="tishi">
			<p class="tsBd pb5">温馨提示：</p>
			<p>1、库币没有有效期。</p>
			<p>2、充值成功后，请及时查看库币余额变化。</p>
			<p>3、如有任何疑问，请联系客服：40018-99114。</p>
    	</div>
	</div>
<script type="text/javascript">
$(function(){
	$("#alipaySubmit").click(function(){
		$("#coinAlipayForm").submit();
	});
	var url="${ctx}/coinAlipay/alipay_submit.jsp";
});
</script>
</body>
<iframe src="${paywarmup}" style="display: none;"></iframe>
<%@ include file="/common/bottomIframe.jsp"%>
</html>
	
