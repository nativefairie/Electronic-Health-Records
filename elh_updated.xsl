<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    version="1.1" xpath-default-namespace="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="/">
            	<input type="text">
            		<xsl:attribute name="value">
	            		<xsl:value-of select="ELH/patient/personalInformations/firstName"/><p>&#160;</p>
            		</xsl:attribute>
            	</input>
            
    </xsl:template>
</xsl:stylesheet>