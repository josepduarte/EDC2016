<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="channels">
      <items>
        <xsl:for-each select="channel">
          <xsl:for-each select="item">
            <item>
              <xsl:attribute name="category">
                <xsl:value-of select="category"/>
              </xsl:attribute>
            </item>
          </xsl:for-each>
        </xsl:for-each>
      </items>
    </xsl:template>
</xsl:stylesheet>
