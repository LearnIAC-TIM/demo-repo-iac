# =============================================================================
#  outputs.tf  –  NETTVERKSPROSJEKTET
# -----------------------------------------------------------------------------
#  Også denne er uendret fra øving 4–5.
#
#  Én ting er verdt å merke seg: du kan IKKE lage en output som viser hvilken
#  key denne kjøringen bruker. Backend-konfigurasjonen er ikke tilgjengelig for
#  HCL i det hele tatt – den leses før språket er i gang.
#
#  Vil du vite hvilket miljø du står i, må du se på verdiene, ikke på backenden:
#  name_prefix under sier "tim84-iac-dev" eller "tim84-iac-prod". Det er også
#  grunnen til at den siste outputen er verdt plassen sin.
# =============================================================================
 
output "resource_group_name" {
  description = "Navnet på ressursgruppen. Nyttig for å finne igjen ressursene i portalen."
  value       = azurerm_resource_group.main.name
}
 
output "subnet_id" {
  description = "ID-en til subnettet, hentet ut av nettverksmodulen."
  value       = module.network.subnet_id
}
 
output "vnet_name" {
  description = "Navnet på det virtuelle nettverket."
  value       = module.network.vnet_name
}
 
output "name_prefix" {
  description = "Prefikset alle ressursnavn er bygget fra. Den raskeste måten å se hvilket miljø du faktisk står i."
  value       = local.name_prefix
}