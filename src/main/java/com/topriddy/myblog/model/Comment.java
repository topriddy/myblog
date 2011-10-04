package com.topriddy.myblog.model;

import java.util.Date;

/**
 * Represents one blog post comment.
 * 
 * @author Raivo Laanemets
 */
public class Comment {
	private String content;
	private String author;
	private Date date;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
