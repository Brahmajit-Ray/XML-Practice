<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" omit-xml-declaration="yes" indent="no"/>

	<xsl:template match="/">
		<html>
		<head>
			<title>XSLT</title>
		</head>
		<body>
			<xsl:for-each select="//driver">
				<u><xsl:value-of select="name"/></u><br/><br/>
				<xsl:value-of select="curr_team/@principal"/><br/>
				<xsl:for-each select="past_teams/team">
				<xsl:sort select="t_name"/>
					<xsl:value-of select="t_name"/><br/>
				</xsl:for-each>
				<br/><br/>
			</xsl:for-each>
			
			<hr style="border:solid 2px blue"/>
			
			<xsl:for-each select="//future_team/team">
				<xsl:if test="t_name='Williams'">
					<xsl:value-of select="../@principal"/><br/>
					<xsl:value-of select="../../name"/><br/>
					<xsl:value-of select="ancestor::*/curr_team"/><br/>
				</xsl:if>
			</xsl:for-each>
			
			<hr style="border:solid 2px blue"/>
			
			<xsl:for-each select="//driver">
				<xsl:choose>
					<xsl:when test="ranking &lt;= 2">
						<xsl:value-of select="name"/><br/>
						Brilliant Performance<br/><br/>
					</xsl:when>
					
					<xsl:when test="ranking &gt;= 3 and ranking &lt;= 6">
						<xsl:value-of select="name"/><br/>
						Moderate Performance<br/><br/>
					</xsl:when>
					
					<xsl:otherwise>
						<xsl:value-of select="name"/><br/>
						Poor Performance<br/><br/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
			
			<hr style="border:solid 2px blue"/>
			
			<ol>
			<xsl:apply-templates select="//driver"/>
			</ol>
			
			<hr style="border:solid 2px blue"/>
		</body>
		</html>
		</xsl:template>
		
		<xsl:template match="//driver">
			<li>
				<xsl:value-of select="name"/>
			</li>
		</xsl:template>
	
	
</xsl:stylesheet>
			
