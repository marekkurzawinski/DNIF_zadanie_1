<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<link rel="stylesheet" href="style.css" type="text/css"/>
	</head>
		<body>
				<table width="400" cellspacing="40">
					<xsl:for-each select="database/person">
					
						<tr>
						<td>
							<div class="name"><xsl:value-of select="name"/></div>
							<xsl:value-of select="birth_date"/><br/>
							<xsl:value-of select="sex"/><br/>
							<xsl:value-of select="height"/><br/>
							<div class="email">Email:<br/>
							<a href="test"><xsl:value-of select="email"/></a></div>
							<xsl:for-each select="phone">
								<div class="phone">
									<xsl:value-of select="./@type" />
									<xsl:text>: </xsl:text>
									<xsl:value-of select="."/>
								</div>
							</xsl:for-each>
						</td>
						</tr>
						
					</xsl:for-each>
				</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>