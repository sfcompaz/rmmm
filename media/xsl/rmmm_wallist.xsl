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
      <xsl:for-each select="TournamentRound">
        <td>#<xsl:value-of select="RoundNumber"/></td>
      </xsl:for-each>
    </tr>
    <xsl:apply-templates />
  </table>
</xsl:template>

<xsl:template match="IndividualParticipant">
  <xsl:variable name="participantId">
    <xsl:value-of select="Id"/>
  </xsl:variable>
  <tr>
    <td><xsl:value-of select="Id" /></td>
    <xsl:apply-templates />
    <xsl:for-each select="/Tournament/TournamentRound">
      <xsl:call-template name="show-player-pairing">
        <xsl:with-param name="playerid" select="$participantId"/>
        <xsl:with-param name="roundid">
          <xsl:value-of select="RoundNumber" />
        </xsl:with-param>
      </xsl:call-template>
    </xsl:for-each>
  </tr>
</xsl:template>

<xsl:template name="show-player-pairing">
  <xsl:param name="playerid" />
  <xsl:param name="roundid"/>
  <xsl:variable name="pairingtree" select="//Pairing[(Black = $playerid or White = $playerid) and ../RoundNumber = $roundid]"/>
  <td>
    <xsl:choose>
      <xsl:when test="count($pairingtree) = 0">
        <xsl:text>=</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:choose>
          <xsl:when test="$pairingtree/Black = $playerid">
            <xsl:value-of select="$pairingtree/White"/>
            <xsl:choose>
                <xsl:when test="starts-with($pairingtree/Result, '1')">
                  <xsl:text>+</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>-</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$pairingtree/Black"/>
            <xsl:choose>
                <xsl:when test="starts-with($pairingtree/Result, '1')">
                  <xsl:text>-</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>+</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </td>
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
