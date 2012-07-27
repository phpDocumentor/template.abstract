<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="xml" omit-xml-declaration="yes" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
    <xsl:include href="chrome/head.xsl"/>
    <xsl:include href="helpers.xsl"/>

    <xsl:template name="title">
        <xsl:choose>
            <xsl:when test="$title != ''">
                <xsl:value-of select="$title"/>
            </xsl:when>
            <xsl:otherwise>phpDocumentor Documentation</xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:call-template name="title" /></title>
                <xsl:call-template name="chrome-head"/>
            </head>
            <body>
                <xsl:call-template name="content"/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>