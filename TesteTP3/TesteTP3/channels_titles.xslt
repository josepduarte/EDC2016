<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="channels">
      <titles>
        <xsl:for-each select="//channel">
          <title>
            <xsl:attribute name="title">
              <xsl:value-of select="title"/>
            </xsl:attribute>
          </title>
        </xsl:for-each>
      </titles>
    </xsl:template>
</xsl:stylesheet>
