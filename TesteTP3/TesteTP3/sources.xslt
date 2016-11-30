<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="channels">
    <sources>
      <xsl:for-each select="channel">
        <source>
            <xsl:attribute name="source">
              <xsl:value-of select="title"/>
            </xsl:attribute>
        </source>
      </xsl:for-each>
    </sources>
  </xsl:template>
</xsl:stylesheet>