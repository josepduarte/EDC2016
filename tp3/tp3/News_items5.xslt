﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <rss>
      <xsl:apply-templates select="//channel"/>
    </rss>
  </xsl:template>
    <xsl:template match="channel">
        <xsl:for-each select="item[5]">
          <item>
            <xsl:attribute name="title">
            <xsl:value-of select="title"/>
            </xsl:attribute>
            <xsl:attribute name="pubDate">
              <xsl:value-of select="pubDate"/>
            </xsl:attribute>
            <xsl:attribute name="category">
              <xsl:value-of select="category"/>
            </xsl:attribute>
            <xsl:attribute name="description">
              <xsl:value-of select="substring-before(description,'&lt;')"/>
            </xsl:attribute>
            
          </item>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
