<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/class">
        <html>
            <body>
                <h1>Liste des étudiants</h1>
                <table border="1">
                    <tr bgcolor="green">
                        <th>id</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Adresse</th>
                    </tr>
                    <xsl:for-each select="etudiant">
                        <tr>
                            <td> <xsl:value-of select="id"/></td>
                            <td> <xsl:value-of select="Nom"/></td>
                            <td> <xsl:value-of select="Prenom"/></td>
                            <td> <xsl:value-of select="Adresse"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>