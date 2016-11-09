<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="properties">
      <cities>
        <xsl:for-each select="property">
          <city>
            <xsl:attribute name="city">
              <xsl:value-of select="address/city"/>
            </xsl:attribute>
          </city>
        </xsl:for-each>
      </cities>
      
    </xsl:template>
</xsl:stylesheet>
