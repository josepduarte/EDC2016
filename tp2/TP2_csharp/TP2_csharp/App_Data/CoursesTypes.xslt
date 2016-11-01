<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="cursos">
    <listaDeGraus>
      <xsl:for-each select="curso">
        <xsl:sort select="nome"/>
        <grau>
          <xsl:attribute name="guid">
            <xsl:value-of select="guid"/>
          </xsl:attribute>
          <xsl:attribute name="nome">
            <xsl:value-of select="grau"/>
          </xsl:attribute>
        </grau>
      </xsl:for-each>
    </listaDeGraus>
  </xsl:template>
</xsl:stylesheet>
