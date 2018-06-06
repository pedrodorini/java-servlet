package br.univel;

import java.util.List;

public class RegisterBean {
	private String name;
	private List<RegisterBean> list;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<RegisterBean> getList() {
		return list;
	}
	public void setList(List<RegisterBean> list) {
		this.list = list;
	}
	
	
}
