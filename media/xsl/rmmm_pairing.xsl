<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" />

<xsl:template match="/">
  <div id="wallist">
    <xsl:apply-templates />
  </div>
</xsl:template>

<xsl:template match="Tournament">
  <h4>
    <xsl:value-of select="Name"/>      
    Round
    <xsl:value-of select="CurrentRoundNumber"/>      
  </h4>
  <table width="100%">
    <tr class="headderrow">
      <td>Black</td>
      <td>White</td>
      <td>Result</td>
    </tr>
    <xsl:apply-templates />
  </table>
</xsl:template>

<xsl:template match="TournamentRound[RoundNumber=/Tournament/CurrentRoundNumber]">
  <xsl:apply-templates />
</xsl:template>

<xsl:template match="//Pairing[../RoundNumber=/Tournament/CurrentRoundNumber]">
  <tr class="pairing">
    <xsl:call-template name="goplayer">
      <xsl:with-param name="playerid">
        <xsl:value-of select="Black" />
      </xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="goplayer">
      <xsl:with-param name="playerid">
        <xsl:value-of select="White" />
      </xsl:with-param>
    </xsl:call-template>
    <td><xsl:value-of select="Result" /></td>
  </tr>
</xsl:template>

<xsl:template name="goplayer">
  <xsl:param name="playerid" />
  <td>
    <xsl:call-template name="firstname">
      <xsl:with-param name="str">
        <xsl:value-of select="//GoPlayer[../Id=$playerid]/FirstName"/>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:text> </xsl:text>
    <xsl:value-of select="//GoPlayer[../Id=$playerid]/Surname"/>
  </td>
</xsl:template>

<xsl:template name="firstname">
  <xsl:param name="str"/>
  <xsl:value-of select="translate($str, '_', ' ')" />
</xsl:template>


<xsl:template match="text()">
</xsl:template>

</xsl:stylesheet>