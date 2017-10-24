<?xml version="1.0" encoding = "UTF-8"?>
<xsl:stylesheet version= "1.0"
  xlmns:xsl= "http://www.w3.org/1999/XSL/Transform"
  xmlns:c= "http://www.ineasysteps.com/xsd">
  <xsl:output method= "html" encoding="UTF-8"/>

  <xsl:template match = "c:doc">
  	<html><head><title>Stock Prices</title></head><body>
  	<table width = "450px">
  	<tr style = "color:white;background:black">
  	<th>Symbol</th> <th>Price ($)</th> <th>CEO</th> </tr>

  	<xsl:apply-templates select = "c:item" />

  	</table></body></html>
  </xsl:template>

  <xsl:template match = "c:item" >
  	<tr>
  		<xsl:apply-templates select = "c:symbol" />
  		<xsl:apply-templates select = "c:price" />
  		<xsl:apply-templates select = "c:ceo" />
  	</tr>
  </xsl:template>


</xsl:stylesheet>
