<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="curso">
        <xsl:copy>
         <guid>
          <xsl:apply-templates select="guid"/>
        </guid>
        <nome>
          <xsl:apply-templates select="nome"/>
        </nome>
        <grau>
          <xsl:apply-templates select="grau"/>
        </grau>
        <local>
          <xsl:apply-templates select="local"/>
        </local>
      </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
