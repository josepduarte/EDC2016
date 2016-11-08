<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="properties">
        <Properties>
          <xsl:for-each select="property">
            <Property>
              <xsl:attribute name="land_register_number">
                <xsl:value-of select="@land_register_number"/>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:value-of select="@value"/>
              </xsl:attribute>
              <xsl:attribute name="city">
                <xsl:value-of select="address/city"/>
              </xsl:attribute>
              <xsl:attribute name="street">
                <xsl:value-of select="address/street"/>
              </xsl:attribute>
              <xsl:attribute name="port_number">
                <xsl:value-of select="address/port_number"/>
              </xsl:attribute>
            </Property>
          </xsl:for-each>
        </Properties>
    </xsl:template>
  
</xsl:stylesheet>
