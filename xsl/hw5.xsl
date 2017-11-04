<?xml version="1.0" encoding= "UTF-8"?>
<xsl:stylesheet version= "1.0"
  xlmns:xsl= "http://www.w3.org/1999/XSL/Transform"
  xmlns:s= "http://www.ineasysteps.com/xsd">
  <xsl:output method= "html" encoding="UTF-8"/>

  <xsl:template match= "s:doc">
  	<html>
      <head>
        <title>HW 5</title>
      </head>
      <body>
  	<table style="width:500px;">
  	<tr style= "color:white; background:black;">
  	   <th>Symbol</th>
       <th>Price ($)</th>
       <th>CEO</th>
    </tr>
    <xsl:for-each select="s:item">
      <xsl:if test="s:price > 70.00">
        <xsl:choose>
          <xsl:when test="position() mod 2=1">
            <tr style="background-color:cyan;">
              <td>
                <xsl:value-of select="s:symbol"/>
              </td>
              <td>
                <xsl:value-of select="s:price"/>
              </td>
              <td>
                <xsl:value-of select="s:ceo"/>
              </td>
            </tr>
          </xsl:when>
          <xsl:otherwise>
            <tr style="background-color:LightGray;">
              <td>
                <xsl:value-of select="s:symbol"/>
              </td>
              <td>
                <xsl:value-of select="s:price"/>
              </td>
              <td>
                <xsl:value-of select="s:ceo"/>
              </td>
            </tr>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
      </xsl:for-each>
    </table>
   </body>
 </html>
</xsl:template>
</xsl:stylesheet>
