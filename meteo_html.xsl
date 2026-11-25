<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Mesures météorologiques</title>
                <style>
                    body { font-family: Arial, sans-serif; background: #eef5ff; color: #18324b; padding: 20px; }
                    h1 { text-align: center; color: #164e8a; }
                    h2 { text-align: center; }
                    table { border-collapse: collapse; margin: 18px auto 35px; width: 75%; background: white; }
                    th, td { border: 1px solid #9aaec2; padding: 10px; text-align: center; }
                    th { background: #2878b5; color: white; }
                    tr:nth-child(even) { background: #f2f7fc; }
                </style>
            </head>
            <body>
                <h1>Mesures des températures des villes</h1>
                <xsl:for-each select="meteo/mesure">
                    <h2>Date : <xsl:value-of select="@date"/></h2>
                    <table>
                        <tr><th>Ville</th><th>Température (°C)</th></tr>
                        <xsl:for-each select="ville">
                            <tr>
                                <td><xsl:value-of select="@nom"/></td>
                                <td><xsl:value-of select="@temperature"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
