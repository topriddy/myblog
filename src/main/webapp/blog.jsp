<%-- 
    Document   : blog
    Created on : 04-Oct-2011, 13:02:03
    Author     : Seamfix
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.topriddy.myblog.model.Comment"%>
<%@page import="com.topriddy.myblog.model.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Post post = (Post) request.getAttribute("post");
    SimpleDateFormat dateFormatter = new SimpleDateFormat("MM/dd/yyyy");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=post.getTitle()%></title>
        <style type="text/css">
            body { font-family:"Helvetica Neue", Arial, Helvetica, sans-serif; }
            .comment { border: 1px solid #666666; margin-top: 20px; padding: 20px; }
            .author, .date, .comment-author, .comment-date { font-style: italic; }
            .wrapper { margin-left: auto; margin-right: auto; width: 800px; }
            .article-content { margin-top: 20px; }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="article">
                <div class="article-header">
                    <h1><%=post.getTitle()%></h1>
                    <span class="author">Author: 
                        <strong><%=post.getAuthor()%></strong>
                    </span>|
                    <span class="date">Date: 
                        <strong><%=dateFormatter.format(post.getDate())%></strong>
                    </span>
                </div>
                <div class="article-content">
                    <%=post.getContent()%>
                </div>
            </div>
            <h2>Comments</h2>
            <%for (Comment comment : post.getComments()) {%>
            <div class="comment">
                <span class="comment-author">Author: <strong><%=comment.getAuthor()%></strong></span>
			| <span class="comment-date">Date: <strong><%=dateFormatter.format(comment.getDate())%></strong></span>
                <br />
                <span class="comment-content">
                    <%=comment.getContent()%>
                </span>
            </div>
            <%}%>
        </div>
</body>
</html>
