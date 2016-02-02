<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" />

<xsl:template match="/">
  <div id="pairing">
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
      <td>Nr</td>
      <td>Black</td>
      <td>White</td>
      <td>Result</td>
    </tr>
    <xsl:apply-templates />
  </table>
</xsl:template>

<xsl:template match="Pairing[../RoundNumber=/Tournament/CurrentRoundNumber]">
  <tr class="pairing">
    <td><xsl:value-of select="BoardNumber" /></td>
    <xsl:call-template name="format-player">
      <xsl:with-param name="playerid">
        <xsl:value-of select="Black" />
      </xsl:with-param>
    </xsl:call-template>
    <xsl:call-template name="format-player">
      <xsl:with-param name="playerid">
        <xsl:value-of select="White" />
      </xsl:with-param>
    </xsl:call-template>
    <td><xsl:value-of select="Result" /></td>
  </tr>
</xsl:template>

<xsl:template name="format-player">
  <xsl:param name="playerid" />
  <xsl:variable name="playtree" select="//GoPlayer[../Id=$playerid]"/>
  <td>
    <xsl:call-template name="remove-underscores">
      <xsl:with-param name="str">
        <xsl:value-of select="$playtree/FirstName"/>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:text> </xsl:text>
    <xsl:call-template name="remove-underscores">
      <xsl:with-param name="str">
          <xsl:value-of select="$playtree/Surname"/>
      </xsl:with-param>
    </xsl:call-template>
    <xsl:text> (</xsl:text>
    <xsl:value-of select="$playtree/GoLevel"/>
    <xsl:text>)</xsl:text>
  </td>
</xsl:template>

<xsl:template name="remove-underscores">
  <xsl:param name="str"/>
  <xsl:value-of select="translate($str, '_', ' ')" />
</xsl:template>


<xsl:template match="text()">
</xsl:template>

</xsl:stylesheet>
