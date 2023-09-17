<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html"/>

<xsl:template match="/">

<html lang="en">
<head>
   <meta charset="UTF-8" />
   <meta name="description" content="Work with an XML file to apply XPath on it based on the assignment's instructions; CNIT 131A" />
   <title>Lan Che's HW4</title>
   <style type="text/css">
      .center {
        display: block;
        text-align:center;
        margin: 0 auto;
      }
   </style>
</head>

<body>
   <h1>ABC Financial Startup</h1>

   <!-- Image. Make it center -->
   <img class="center" src="financialstartup.jpg" alt="ABC Financial Startup Pic" />

   <!-- Paragraph -->
   <p>We are a very young financial manager company and we are proud of our clients</p>
   <p>We have started with 1 client a little bit more than 10 years ago and now we have <xsl:value-of select="count(//Client)" /> clients</p> <!-- 8 clients total -->
   <p>These are our clients: 
      <xsl:for-each select="//client">
         <xsl:value-of select="name/first" /><xsl:text> </xsl:text><xsl:value-of
   select="name/last" />
         <!--xsl:value-of select="." separator=", "/ -->

            <xsl:choose>
               <xsl:when test="position()=last()">.</xsl:when>
                  <xsl:when test="position()=last() - 1">, and </xsl:when>
                  <xsl:otherwise>, </xsl:otherwise>
            </xsl:choose>
      </xsl:for-each>
   </p>
   <p> <xsl:value-of select="count(Accounts/Client[Years > 7])" /> of our clients are with us for more than 7 years</p> <!-- 4 clients with Years > 7 -->

</body>
</html>

</xsl:template>

   <!-- xsl:template match = "Name"> 
    <xsl:value-of select="Name/First"/>
    <xsl:value-of select="Name/Last"/>
    <xsl:value-of select = "." />
   </xsl:template --> 

</xsl:stylesheet>
