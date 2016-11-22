<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="listaDeRSS">
    <xsl:copy>
      <xsl:for-each select="//feed">
        <feed>
          <xsl:attribute name="name">
            <xsl:value-of select="name"/>
          </xsl:attribute>
          <xsl:attribute name="url">
            <xsl:value-of select="url"/>
          </xsl:attribute>
        </feed>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
