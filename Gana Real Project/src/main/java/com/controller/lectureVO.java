package com.controller;

public class lectureVO {
	private String id;
	private String info;
	private String teach;
	private int free;
	private String link;
	private int test;
	private int cost;
	private String num;
	private int bf;
	private String date;
	private int sub;
	private String name;
	private String site;
	
	public lectureVO(String id, String info, String teach, int free, String link, int test, int cost, String num, int bf,
			String date, int sub, String name, String site) {
		super();
		this.id=id;
		this.info = info;
		this.teach = teach;
		this.free = free;
		this.link = link;
		this.test = test;
		this.cost = cost;
		this.num = num;
		this.bf = bf;
		this.date = date;
		this.sub = sub;
		this.name = name;
		this.site = site;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getTeach() {
		return teach;
	}
	public void setTeach(String teach) {
		this.teach = teach;
	}
	public int getFree() {
		return free;
	}
	public void setFree(int free) {
		this.free = free;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getTest() {
		return test;
	}
	public void setTest(int test) {
		this.test = test;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getBf() {
		return bf;
	}
	public void setBf(int bf) {
		this.bf = bf;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getSub() {
		return sub;
	}
	public void setSub(int sub) {
		this.sub = sub;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
}
