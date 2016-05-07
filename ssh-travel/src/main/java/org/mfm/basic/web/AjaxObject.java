package org.mfm.basic.web;

public class AjaxObject {
	private int result;
	private String msg;
	private Object obj;

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public AjaxObject(int result, String msg, Object obj) {
		super();
		this.result = result;
		this.msg = msg;
		this.obj = obj;
	}

	public AjaxObject() {
		super();
	}

	public AjaxObject(int result, String msg) {
		super();
		this.result = result;
		this.msg = msg;
	}

	public AjaxObject(int result) {
		super();
		this.result = result;
	}

	public AjaxObject(int result, Object obj) {
		super();
		this.result = result;
		this.obj = obj;
	}

	public AjaxObject(String msg, Object obj) {
		super();
		this.msg = msg;
		this.obj = obj;
	}

}
