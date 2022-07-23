<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:my="http://www.example.com/my"
exclude-result-prefixes="my">
<xsl:output method="html" encoding="utf-8"/>
<xsl:strip-space elements="*"/>

<my:columns>
    <col>id</col>
    <col>Nom</col>
    <col>Prenom</col>
    <col>Adresse</col>
</my:columns>
<xsl:variable name="columns" select="document('')/xsl:stylesheet/my:columns" />

<xsl:template match="/root">
    <table border="1">
        <tr>
            <xsl:for-each select="$columns/col">
                <th bgcolor="red">
                    <xsl:value-of select="." />
                </th>
            </xsl:for-each>
        </tr>
        <xsl:for-each select="item">
            <xsl:variable name="attributes" select="@*" />
            <tr>
                <xsl:for-each select="$columns/col">
                    <td>
                        <xsl:value-of select="$attributes[name()=current()]" />
                    </td>
                </xsl:for-each>
            </tr>
        </xsl:for-each> 
    </table>
</xsl:template>

</xsl:stylesheet>