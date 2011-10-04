package com.topriddy.myblog.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;


import de.svenjacobs.loremipsum.LoremIpsum;

/**
 * Represents one blog post.
 * 
 * @author Raivo Laanemets
 */
public class Post {
	private String content;
	private String title;
	private Date date;
	private String author;
	
	private List<Comment> comments;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	
	/**
	 * Creates random post.
	 */
	public static Post getRandomPost() {
		Random random = new Random();
		LoremIpsum loremIpsum = new LoremIpsum();
		
		Post post = new Post();
		post.setAuthor(getRandomPerson(random));
		post.setDate(new Date(System.currentTimeMillis() - random.nextInt()));
		post.setTitle(loremIpsum.getWords(4));
		post.setContent(loremIpsum.getParagraphs(3));
		
		List<Comment> comments = new ArrayList<Comment>();
		for (int i = random.nextInt(10); i >= 0; i--) {
			Comment comment = new Comment();
			comment.setAuthor(getRandomPerson(random));
			comment.setContent(loremIpsum.getWords(20));
			comment.setDate(new Date(post.getDate().getTime() + random.nextInt()));
			comments.add(comment);
		}
		
		post.setComments(comments);
		
		return post;
	}
	
	private static String getRandomPerson(Random random) {
		return new String[] {"Mary", "John", "Kate", "Andy"}[random.nextInt(4)];
	}

}
