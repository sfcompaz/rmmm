<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" />

<xsl:template match="/">
  <h4>Wallist</h4>
  <div id="wallist">
    <xsl:apply-templates />
  </div>
</xsl:template>

<xsl:template match="Tournament">
  <table width="100%">
    <tr class="headderrow">
      <td>Id</td>
      <td>Nm</td>
    </tr>
    <xsl:apply-templates />
  </table>
</xsl:template>

<xsl:template match="IndividualParticipant">
  <tr>
    <td><xsl:value-of select="Id" /></td>
    <xsl:apply-templates />
  </tr>
</xsl:template>

<xsl:template match="GoPlayer">
  <td>
    <xsl:apply-templates />
    <xsl:text> </xsl:text>
    <xsl:value-of select="Surname"/>
  </td>
</xsl:template>

<xsl:template match="FirstName">
  <xsl:value-of select="translate(., '_', ' ')" />
</xsl:template>

<xsl:template match="text()">
</xsl:template>

</xsl:stylesheet>
