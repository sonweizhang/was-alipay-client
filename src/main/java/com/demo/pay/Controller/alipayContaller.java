package com.demo.pay.Controller;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.pay.util.Constants;
import com.pay.common.utils.AlipayUtil;
import com.pay.common.utils.MemberPayConfig;
import com.pay.common.utils.UtilDate;
import com.pay.common.utils.UtilPay;

@Controller
public class alipayContaller {
    @RequestMapping("/index")
    public String hello(HttpServletRequest request,ModelAndView mav){
        return "index";
    }
	@RequestMapping("/alipayapi")
	public ModelAndView alipayApi(HttpServletRequest request,ModelAndView mav) throws UnsupportedEncodingException {
		String total_fee = new String(request.getParameter("WIDtotal_fee").getBytes("ISO-8859-1"),"UTF-8");
		String orderNo = UtilDate.getOrderNum() + UtilDate.getThree();
//		total_fee = new String("0.01".getBytes("ISO-8859-1"),"UTF-8");
		Map<String, String> sPra = new HashMap<String, String>();
		sPra.put("orderNum",orderNo);
		sPra.put("productName","库币充值");
		sPra.put("productMoney",total_fee);
		sPra.put("productDescription","库币充值");
		sPra.put("productUrl", "");
		sPra.put("payType", String.valueOf(MemberPayConfig.PAY_TYPE_ALIPAY_STATUS));//支付方式
		sPra.put("tradType", "1");
		sPra.put("notifyUrl", Constants.COIN_NOTIFY_URL);
		sPra.put("returnUrl", Constants.COIN_RETURN_URL);
		sPra.put("detail","库币充值");
		sPra.put("detailMode",String.valueOf(MemberPayConfig.DETAIL_MODE_TOPUP_ONLINE));
		sPra.put("detailType",String.valueOf(MemberPayConfig.DETAIL_TYPE_TOPUP));
		String sHtmlText = UtilPay.buildRequest(sPra, "POST", "提交",Constants.PAY_SERVER_URL, AlipayUtil.key);
		mav.getModel().put("sHtmlText", sHtmlText);
		BigDecimal amount = new BigDecimal(total_fee).multiply(new BigDecimal("0.01"));
		//memberCoinService.saveCoinOrder(amount, memberId, orderNo);
		mav.setViewName("alipayapi");
		return mav;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
