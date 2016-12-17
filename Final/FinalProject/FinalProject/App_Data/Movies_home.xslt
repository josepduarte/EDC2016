<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="movies">
        <xsl:copy>
          <xsl:for-each select="movie">
            <xsl:copy>
              <xsl:attribute name="imdb_id">
                <xsl:value-of select="imdb_id"/>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="title"/>
              </xsl:attribute>
              <xsl:attribute name="image">
                <xsl:value-of select="image"/>
              </xsl:attribute>
              <xsl:attribute name="in_stock">
                <xsl:value-of select="in_stock"/>
              </xsl:attribute>
            </xsl:copy>
          </xsl:for-each>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
