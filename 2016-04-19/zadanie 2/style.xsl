<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<link rel="stylesheet" href="style.css" type="text/css"/>
	</head>
		<body>
				<table width="400" cellspacing="1" border="3" >
					<xsl:for-each select="database/album">
					
						<tr>
						<td>
							<div class="author"><xsl:value-of select="author"/></div>
							<div class="title"><xsl:value-of select="title"/></div>
							Released: <xsl:value-of select="release_date"/><br/>
							Produced: <xsl:value-of select="record_date"/> in <xsl:value-of select="studio_name"/><br/>
							Genre: <xsl:value-of select="genre"/><br/>
							Total length: <xsl:value-of select="length"/><br/>
							Label: <xsl:value-of select="label"/><br/>
							Producer: <xsl:value-of select="producer"/><br/>
						</td>
						</tr>
						
					</xsl:for-each>
				</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>