package com.demo.pay.util;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;



public class PropertiesUtil {
	private static final Log log = LogFactory.getLog(PropertiesUtil.class);
	public static Properties properties;

	static {
		loadConfig();
	}

	
	/** 
	 * loadConfig( 初始化properties文件) 
	 * (这里描述这个方法适用条件 – 可选)   
	 * void 
	 * @exception  
	 * @since  1.0
	*/
	public static void loadConfig() {
		String configFile = "wk_member.properties"; //文件名称
		InputStream in = Thread.currentThread().getContextClassLoader().getResourceAsStream(configFile);
		if (in == null)
			throw new RuntimeException("No configuration file!!" + configFile);
		properties = new Properties();
		try {
			properties.load(in);
		} catch (Exception e) {
			e.printStackTrace();
			log.error("loadConfig :: error",e);
		}

	
	}

	/** 
	 * getKey(根据key 获取相应的值) 
	 * (这里描述这个方法适用条件 – 可选) 
	 * @param key
	 * @return  
	 * String 
	 * @exception  
	 * @since  1.0
	*/
	public static String getKey(String key) {
		return properties.getProperty(key);
	}

	
	/** 
	 * getMapForKey( 根据相同的开始的KEY 生成map) 
	 * (这里描述这个方法适用条件 – 可选) 
	 * @param key
	 * @return  
	 * Map 
	 * @exception  
	 * @since  1.0
	*/
	public static Map<Object,Object> getMapForKey(String key) {
		Map<Object,Object> map = new HashMap<Object,Object>();
		Set<Object> setTemp = properties.keySet();
		for (Object o : setTemp) {
			String keystr = o.toString();
			if (keystr.startsWith(key)) {
				map.put(keystr.substring(key.length(), keystr.length()), properties.getProperty(keystr));
			}

		}
		return map;
	}
	

	/** 
	 * reloadConfig(重载properties文件) 
	 * (这里描述这个方法适用条件 – 可选)   
	 * void 
	 * @exception  
	 * @since  1.0
	*/
	public static void reloadConfig() {
		loadConfig();
	}

}
