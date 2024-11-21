<?xml version="1.0" encoding="UTF-8"?>
<!--
Ajout d'un code famille selon si le siret client est rempli ou non.
SWITCH
CASE:
Siret == null = PART
DEFAULT:
Siret != null = PRO
-->
<stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<output omit-xml-declaration="yes" indent="yes" />
	<strip-space elements="*" />
	<template match="node()|@*">
		<copy>
			<apply-templates select="node()|@*" />
		</copy>
	</template>
	<template match="/prestashop/customer">
		<copy>
			<apply-templates select="node()|@*" />
			<variable name="siret" select="/prestashop/customer/siret" />
			<choose>
				<when test="$siret =''">
					<code_famille>
						PART
					</code_famille>
				</when>
				<otherwise>
					<code_famille>
						PRO
					</code_famille>
				</otherwise>
			</choose>
		</copy>
	</template>
</stylesheet>
