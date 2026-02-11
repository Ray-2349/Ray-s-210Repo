<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:variable name="x-spacer" select="200"/>
    
    <xsl:variable name="y-spacer" select="10"/>
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <desc>Pokemon SVG movesets</desc>
        <g transform="translate(50,600)">
        <svg>
            
            <xsl:for-each select="descendant::move">
                <xsl:variable name="moveSet"/>
                <rect x="{10*position()}" y="{500}" width="10" fill="blue" stroke="red" stroke-width="3"/>
            </xsl:for-each>
            
        </svg>
    </g>
    </xsl:template>
</xsl:stylesheet>