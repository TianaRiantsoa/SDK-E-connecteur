<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    Ajout d'un tag : DO_DateLivr
    
    Récupération /connecteur/order/commande/[date_add] et Formatage en JJ/MM/YYYY

    Insertion de la date formater dans le nouveau tag
 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="/connecteur/order/commande">

        <xsl:variable name="date_add" select="/connecteur/order/commande/date_add" />
    
        <xsl:variable name="mm">
            <xsl:value-of select="substring($date_add,6,2)" />
        </xsl:variable>
    
        <xsl:variable name="dd">
            <xsl:value-of select="substring($date_add,9,2)" />
        </xsl:variable>
    
        <xsl:variable name="yyyy">
            <xsl:value-of select="substring($date_add,1,4)" />
        </xsl:variable>

        <xsl:variable name="date_format">
            <xsl:value-of select="concat($dd,'/', $mm, '/', $yyyy)" />
        </xsl:variable>

        <xsl:copy>
            <xsl:apply-templates/>
                <xsl:element name="DO_DateLivr"><xsl:value-of select="$date_format"/></xsl:element>
        </xsl:copy>
        
    </xsl:template>  

</xsl:stylesheet>

