<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
  <body>
  <h1>List of Clients</h1>

  <table border="2" color="#0000ff"> <!-- Blue border -->
    <tr bgcolor="#FF9933"> <!-- Orange cells for 4 column headers below -->
      <th>Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Account Total</th>
    </tr>
    <xsl:for-each select="Accounts/Client">
    <tr>
      <td><xsl:value-of select="Name"/></td>
      <td><xsl:value-of select="Phone"/></td>
      <td><xsl:value-of select="E-mail"/></td>
      <td><xsl:value-of select="Account_Total"/></td>
    </tr>
    </xsl:for-each>
  </table>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
