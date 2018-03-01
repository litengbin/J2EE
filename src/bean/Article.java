package bean;

import java.util.Date;

import dbpool.*;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

public class Article  {	
	int id;
	String title;//文章题目
	String content;//文章内容
	String userId;//文章发表人id
	int remarkNum;//文章回复数
	int hitNum;//文章点击率
	Date createTime;//文章发表时间
	Date lastRemarkTime;//文章最后回复时间 
    String userName;//文章发表人
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Article(){
		title = "";
		content = "";
		userId = "";
		remarkNum = 0;
		hitNum = 0 ;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public void IncreaseRemarkNum(){
		remarkNum ++ ;
	}
	
	public void IncreaseHitNum(){
		hitNum ++ ;
	}
	
	public int getRemarkNum() {
		return remarkNum;
	}

	public void setRemarkNum(int remarkNum) {
		this.remarkNum = remarkNum;
	}

	public int getHitNum() {
		return hitNum;
	}

	public void setHitNum(int hitNum) {
		this.hitNum = hitNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getLastRemarkTime() {
		return lastRemarkTime;
	}
	public void setLastRemarkTime(Date lastRemarkTime) {
		this.lastRemarkTime = lastRemarkTime;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
