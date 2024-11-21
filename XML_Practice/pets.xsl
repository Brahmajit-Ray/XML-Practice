<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
		<head>
			<title>Hello</title>
		</head>
		<body>
			<xsl:for-each select="//pet">
				<xsl:value-of select="name"/><br/>
				<xsl:value-of select="count(owner)"/><br/>
				<xsl:for-each select="owner">
					<xsl:if test="@married='No'">
						<xsl:value-of select="oname"/><br/>
					</xsl:if>
				</xsl:for-each>
				<br/>
			</xsl:for-each>
			
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
