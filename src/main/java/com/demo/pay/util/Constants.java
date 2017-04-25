package com.demo.pay.util;


/**
 * @Copyright 北京网库互通信息技术有限公司
 * @Title: Constants.java 
 * @Description: 会员信息常量
 * @author zhaoxuguang  
 * @Modified zhaoxuguang      
 * @date 2013-6-6 上午11:19:37   
 * @version V1.0     
*/
public class Constants {
	
	
    //固定排名支付宝链接
    public static final String ADVER_NOTIFY_URL = PropertiesUtil.getKey("adver.notify.url");
    public static final String ADVER_RETURN_URL = PropertiesUtil.getKey("adver.return.url");
    /**支付服务地址*/
    public static final String PAY_SERVER_URL = PropertiesUtil.getKey("pay.server.url");
    /**支付预加载地址*/
    public static final String PAY_WARMUP_URL = PropertiesUtil.getKey("alipay.warmUp.url");
    /**广告支付回调地址*/
    public static final String ADVERRECORDS_RETURN_URL = PropertiesUtil.getKey("adverrecords.return.url");
    //库币支付宝链接
    public static final String COIN_NOTIFY_URL = PropertiesUtil.getKey("coin.notify.url");
    public static final String COIN_RETURN_URL = PropertiesUtil.getKey("coin.return.url");
    
    public static final String DPT_NOTIFY_URL = PropertiesUtil.getKey("dpt.notify.url");
    public static final String DPT_RETURN_URL = PropertiesUtil.getKey("dpt.return.url");
    public static final String DPT_FAIL_URL = PropertiesUtil.getKey("dpt.fail.url");
    public static final String DPT_SUCCESS_URL = PropertiesUtil.getKey("dpt.success.url");

    public static final String COIN_SUCCESS_URL = PropertiesUtil.getKey("coin.success.url");

    public static final String COIN_FAIL_URL = PropertiesUtil.getKey("coin.fail.url");

	public static final String RECHARGE_NOTIFY_URL = PropertiesUtil.getKey("recharge.notify.url");
	public static final String RECHARGE_RETURN_URL = PropertiesUtil.getKey("recharge.return.url");

	public static final String RECHARGE_SUCCESS_URL = PropertiesUtil.getKey("recharge.success.url");

	public static final String RECHARGE_FAIL_URL = PropertiesUtil.getKey("recharge.fail.url");

}
