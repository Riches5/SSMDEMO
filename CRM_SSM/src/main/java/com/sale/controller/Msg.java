package com.sale.controller;

import java.util.HashMap;
import java.util.Map;
public class Msg {
	//状态码 100 -成功     200 -失败
	private int code;
	//提示信息
	private String msg;
	
	//用户要返回给浏览器的数据
	//为了设计通用，放到map中，包含了要返回的用户数据
	private Map<String, Object> extend = new HashMap<String,Object>();
 
	//返回成功的方法
	public static Msg success(){
		Msg result = new Msg();
		result.setCode(100);
		result.setMsg("处理成功！");
		return result;
	}
	//返回失败的方法
	public static Msg fail(){
		Msg result = new Msg();
		result.setCode(100);
		result.setMsg("处理失败！");
		return result;
	}
 
	public Msg add(String key,Object value){
		this.getExtend().put(key, value);
		return this;
	}
	public int getCode() {
		return code;
	}
 
	public void setCode(int code) {
		this.code = code;
	}
 
	public String getMsg() {
		return msg;
	}
 
	public void setMsg(String msg) {
		this.msg = msg;
	}
 
	public Map<String, Object> getExtend() {
		return extend;
	}
 
	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}
	
}
