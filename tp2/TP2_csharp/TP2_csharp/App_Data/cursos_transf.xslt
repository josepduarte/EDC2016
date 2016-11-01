<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="cursos">
    <xsl:copy>
      <xsl:for-each select="curso">
        <xsl:sort select="nome"/>
        <xsl:copy>
          <xsl:attribute name="guid">
            <xsl:value-of select="guid"/>
          </xsl:attribute>
          <xsl:attribute name="nome">
            <xsl:value-of select="nome"/>
          </xsl:attribute>
          <xsl:attribute name="grau">
            <xsl:value-of select="grau"/>
          </xsl:attribute>
          <xsl:attribute name="local">
            <xsl:value-of select="local"/>
          </xsl:attribute>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
