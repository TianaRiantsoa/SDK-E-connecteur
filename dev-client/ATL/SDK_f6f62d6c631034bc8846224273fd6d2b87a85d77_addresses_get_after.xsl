<?xml version="1.0" encoding="UTF-8"?>
<!-- 
    Ajout d'un code famille selon l'id du pays .
    SWITCH
        CASE:
            $id_pays == 1 = PARTCEE20
        CASE:
            $id_pays == 8 (FR) = NULL
        DEFAULT:
            $id_pays == différent des CASES = HORSCEE
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/prestashop/address">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
                        
            <xsl:variable name="id_pays" select="/prestashop/address/id_country"/>
            
            <xsl:choose>
                <xsl:when test="$id_pays = 1">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 2">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 3">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 6">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 7">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 8">
                    <code_famille></code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 9">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 10">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 12">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 13">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 14">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 15">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 16">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 17">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 18">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 20">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 26">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 36">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 37">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 74">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 76">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 86">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 125">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 131">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 139">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 143">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 193">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:when test="$id_pays = 236">
                    <code_famille>PARTCEE20</code_famille>
                </xsl:when>
                <xsl:otherwise>
                    <code_famille>HORSCEE</code_famille>
                </xsl:otherwise>
            </xsl:choose>
            
        </xsl:copy>

    </xsl:template>
        
</xsl:stylesheet>