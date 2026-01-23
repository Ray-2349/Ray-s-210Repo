<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:apply-templates select="title"/> 
                </title>
                <link ref="stylesheet" href="skyrim.css"/>
            </head>
            <body>
               <h1><xsl:apply-templates select="descendant::title"/></h1>
                
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="cover">
       <h1><xsl:apply-templates select="title"/></h1> 
        <h2><xsl:apply-templates select="attribution"/></h2>
        <h3><xsl:apply-templates select="subtitle"/></h3>
    </xsl:template>
    
    <xsl:template match="body">
        <section class="main">
            <xsl:apply-templates/>
        </section>
    </xsl:template>
    
    <xsl:template match="paragraph">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="faction">
        <span class="faction">
            <xsl:apply-templates/>
        </span>
        
    </xsl:template>
    
    <xsl:template match="QuestEvent">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="QuestItem">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    <xsl:template match="location">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="epithat">
        <em>
            <xsl:apply-templates/>
        </em>
    </xsl:template>
    
    <xsl:template match="character">
        <strong>
            <xsl:apply-templates/>
        </strong>
    </xsl:template>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</xsl:stylesheet>