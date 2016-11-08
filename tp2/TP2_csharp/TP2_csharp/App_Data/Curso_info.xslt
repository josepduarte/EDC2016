<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:template match="curso">
    <xsl:copy>
          <xsl:attribute name="guid">
            <xsl:value-of select="guid"/>
          </xsl:attribute>
          <xsl:attribute name="nome">
            <xsl:value-of select="nome"/>
          </xsl:attribute>
          <xsl:attribute name="codigo">
            <xsl:value-of select="codigo"/>
          </xsl:attribute>
          <xsl:attribute name="grau">
            <xsl:value-of select="grau"/>
          </xsl:attribute>
      <xsl:attribute name="vagas">
        <xsl:value-of select="vagas"/>
      </xsl:attribute>
      <xsl:attribute name="saidas_profissionais">
        <xsl:value-of select="saidas_profissionais"/>
      </xsl:attribute>
      <xsl:attribute name="fase1">
        <xsl:value-of select="medias/fase1"/>
      </xsl:attribute>
      <xsl:attribute name="fase2">
        <xsl:value-of select="medias/fase2"/>
      </xsl:attribute>
      <xsl:attribute name="duracao">
        <xsl:value-of select="duracao"/>
      </xsl:attribute>
      <xsl:attribute name="provas">
        <xsl:value-of select="provas"/>
      </xsl:attribute>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
