<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    Ajout d'un noeux : email
    
    Récupération et stockage de l'email dans la variable email

    Création et ajout du noeux email dans les enfants de /prestashop/address
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

        <xsl:variable name="email" select="/prestashop/address/id_customer/customer/email" />

        <xsl:copy>
            <xsl:apply-templates/>
                <xsl:element name="email">
                    <xsl:value-of select="$email"/>
                </xsl:element>
        </xsl:copy>
        
    </xsl:template>  

</xsl:stylesheet>

