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
			<xsl:with-param name="title" select="'List of Posts'" />
		</xsl:call-template>
	</xsl:template>

	<xsl:template match="/posts">	
		<h1>Total list of posts</h1>
		<ul>
			<xsl:for-each select="post">
				<li>
					<a href="{concat(slug, '.xml')}"><xsl:value-of select="title" /> by <xsl:value-of select="author" /></a>
				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>

</xsl:stylesheet>