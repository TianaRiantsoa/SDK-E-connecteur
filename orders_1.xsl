<?xml version="1.0" encoding="UTF-8"?>
<stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Définir l'espace pour les URL dynamiques -->
	<param name="apiKey" />
	<param name="baseApiUrl" select="'https://achatnature.com/api/order_payments/'" />
	<!-- Copier tous les noeuds par défaut -->
	<template match="node()|@*">
		<copy>
			<apply-templates select="node()|@*" />
		</copy>
	</template>
	<!-- Ajouter la transaction_id dans <note> -->
	<template match="note">
		<note>
			<!-- Charger dynamiquement le deuxième XML basé sur la référence -->
			<variable name="reference" select="/prestashop/order/reference" />
			<variable name="secondXml" select="document(concat($baseApiUrl, '&filter[order_reference]=', $reference, '&display=full&ws_key=', $apiKey))" />
			<value-of select="$secondXml/prestashop/order_payments/order_payment/transaction_id" />
		</note>
	</template>
</stylesheet>
