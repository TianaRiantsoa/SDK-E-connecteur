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

    <!-- Template générique pour copier tous les nœuds -->
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <!-- Template spécifique pour le nœud customer -->
    <xsl:template match="/prestashop/customer">
        <xsl:copy>
            <!-- Copie des nœuds enfants -->
            <xsl:apply-templates select="node()|@*"/>
            
            <!-- Ajout du nœud code_famille avec la valeur PRO -->
            <code_erp>
                <xsl:text>CL01493</xsl:text>
            </code_erp>
			<name>
                <xsl:text>EVENDI</xsl:text>
            </name>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>


