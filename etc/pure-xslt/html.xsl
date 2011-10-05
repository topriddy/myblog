<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="html">
		<xsl:param name="title" select="'Untitled'" />
		<html>
			<head>
				<title>
					<xsl:value-of select="$title" />
				</title>
				<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection" />
				<link rel="stylesheet" href="css/print.css" type="text/css" media="print" />
				<!--[if lt IE 8]><link rel="stylesheet" href="css/ie.css" type="text/css" media="screen, projection"><![endif] -->
			</head>
			<body>
				<div class="container">
					<xsl:apply-templates />
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
