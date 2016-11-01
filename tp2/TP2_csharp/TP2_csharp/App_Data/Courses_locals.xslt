<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="cursos">
    <listaDeLocais>
      <xsl:for-each select="curso">
        <xsl:sort select="nome"/>
        <local>
          <xsl:attribute name="guid">
            <xsl:value-of select="guid"/>
          </xsl:attribute>
          <xsl:attribute name="nome">
            <xsl:value-of select="local"/>
          </xsl:attribute>
        </local>
      </xsl:for-each>
    </listaDeLocais>
  </xsl:template>
</xsl:stylesheet>
