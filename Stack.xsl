<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My Collection</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>instance</th>
      <th>swver</th>
      <th>systemid</th>
      <th>systime</th>
      <th>sysmem</th>
      <th>cutmem</th>
      <th>filemem</th>
      <th>calconfig</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="instance"/></td>
      <td><xsl:value-of select="swver"/></td>
      <td><xsl:value-of select="systemid"/></td>
      <td><xsl:value-of select="systime"/></td>
      <td><xsl:value-of select="sysmem"/></td>
      <td><xsl:value-of select="cutmem"/></td>
      <td><xsl:value-of select="filemem"/></td>
      <td><xsl:value-of select="calconfig"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>