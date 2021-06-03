<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    Ajout d'un code famille selon si le siret client est rempli ou non.
    SWITCH
        CASE:
            Siret == null = PART
        DEFAULT:
            Siret != null = PRO
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/prestashop/customer">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
                        
            <xsl:variable name="tva_intra" select="/prestashop/customer/vatNumber"/>

            <xsl:choose>
                <xsl:when test="$tva_intra =''">
                    <code_famille>PART</code_famille>
                </xsl:when>
                <xsl:otherwise>
                    <code_famille>PRO</code_famille>
                </xsl:otherwise>
            </xsl:choose>
            
        </xsl:copy>

    </xsl:template>
    
</xsl:stylesheet>