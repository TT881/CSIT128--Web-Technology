<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/forecast">
    <html>
      <head> 
        <title>Part- 3</title> 
      </head>
      <body>
	  <p style="border:1px solid black;"> 
        <h1> <xsl:value-of select="@queryLocation"/> @ <xsl:value-of select="@queryTime" /> </h1>
        <table border="0" width = "100%'">
          <xsl:for-each select="weather">
            <xsl:sort select="date"/>
            <td align="center" >
				<td> 
				<font color= "blue"> <xsl:value-of select="dayOfWeek"/> </font>   <!-- Display First Row for Date-->
				<xsl:text> </xsl:text> 
				<xsl:value-of select="date"/> 
				<xsl:text> / </xsl:text><xsl:value-of select="month" /> 
				</td> 
				
			<tr> 	<!-- Display Second Row for Images -->									
				<td align="center">      
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="overallCode"/>
                    <xsl:text>.png</xsl:text>
                  </xsl:attribute>
                  <xsl:attribute name="width">
                    <xsl:text>80px</xsl:text>	
                  </xsl:attribute>
               </img>
               </td>			
			</tr> 
			
			<tr>  <!-- Display the Highest/Lowest Degree -->
				<td> 
					<b> <font size="5px"> <xsl:value-of select="highest"/></font></b>  
					<xsl:text disable-output-escaping="yes">&#176;</xsl:text>
					<xsl:text>/</xsl:text> 
					<xsl:value-of select="lowest"/>
					
				</td>
			</tr>
			
			<tr>
				<i><xsl:value-of select="overall"/></i>   <!-- Display the Overall weather Description-->
			</tr>
			
		</td>   
			</xsl:for-each> 
		</table> 
		</p>
	</body> 
	</html> 
</xsl:template> 
</xsl:stylesheet> 