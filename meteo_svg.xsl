<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg"
             width="900" height="480" viewBox="0 0 900 480">
            <title>Histogramme animé des températures</title>
            <rect x="0" y="0" width="900" height="480" fill="#f0f5ff"/>
            <text x="450" y="35" text-anchor="middle"
                  font-family="Arial" font-size="24" font-weight="bold"
                  fill="#164e8a">Histogramme des températures</text>

            <!-- Le graphique représente la première date du document. -->
            <xsl:for-each select="meteo/mesure[1]">
                <text x="450" y="70" text-anchor="middle"
                      font-family="Arial" font-size="17">
                    Date : <xsl:value-of select="@date"/>
                </text>
                <line x1="25" y1="390" x2="875" y2="390"
                      stroke="#34495e" stroke-width="2"/>
                <xsl:for-each select="ville">
                    <xsl:variable name="barHeight" select="number(@temperature) * 10"/>
                    <xsl:variable name="x" select="35 + (position() - 1) * 107"/>
                    <rect x="{$x}" y="390" width="62" height="0"
                          rx="4" fill="#3498db">
                        <animate attributeName="height" from="0"
                                 to="{$barHeight}" dur="1.5s"
                                 begin="0s" fill="freeze"/>
                        <animate attributeName="y" from="390"
                                 to="{390 - $barHeight}" dur="1.5s"
                                 begin="0s" fill="freeze"/>
                    </rect>
                    <text x="{$x + 31}" y="{380 - $barHeight}"
                          text-anchor="middle" font-family="Arial"
                          font-size="14" fill="#18324b">
                        <xsl:value-of select="@temperature"/>
                    </text>
                    <text x="{$x + 31}" y="415" text-anchor="middle"
                          font-family="Arial" font-size="12" fill="#18324b">
                        <xsl:value-of select="@nom"/>
                    </text>
                </xsl:for-each>
            </xsl:for-each>
        </svg>
    </xsl:template>
</xsl:stylesheet>
