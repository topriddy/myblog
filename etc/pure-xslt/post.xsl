<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:include href="html.xsl" />
		
	<!-- Output settings for generating HTML 4 -->
	<!--
	<xsl:output method="html" doctype-system="http://www.w3.org/TR/html4/strict.dtd"
		doctype-public="-//W3C//DTD HTML 4.01//EN" indent="yes" />-->
		
	<!-- Output settings for generating HTML 5 -->
	<xsl:output method="html" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"
		media-type="text/html" doctype-system="about:legacy-compat" />

	<xsl:template match="/">
		<xsl:call-template name="html">
			<xsl:with-param name="title" select="/post/title/text()" />
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template match="/post">
		<div class="span-18 border">
			<h1><xsl:value-of select="title" /></h1>
		
			<p>
				<xsl:value-of select="content" />
			</p>
			
			<h2>Comments</h2>
			
			<xsl:for-each select="comments/comment">
				<div class="comment">
					<span class="author">Author: <strong><xsl:value-of select="author" /></strong></span>
					| <span class="date">Date: <strong><xsl:value-of select="date" /></strong></span>
					<br />
					<span class="content">
						<xsl:value-of select="content" />
					</span>
				</div>
			</xsl:for-each>
		</div>
		<div class="span-6 last">
			<h2>List of posts</h2>
			<ul>
				<xsl:for-each select="document('index.xml')/posts/post">
					<li>
						<a href="{concat(slug, '.xml')}"><xsl:value-of select="title" /></a>
					</li>
				</xsl:for-each>
			</ul>
		</div>
	</xsl:template>

</xsl:stylesheet>
