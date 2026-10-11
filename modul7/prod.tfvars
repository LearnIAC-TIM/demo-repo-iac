# =============================================================================
#  prod.tfvars  –  uendret fra øving 6
# -----------------------------------------------------------------------------
#  Fortsatt ÉN linje forskjell fra dev.tfvars:
#
#    diff dev.tfvars prod.tfvars
#
#  Og fortsatt er det den ene linja, pluss key-flagget, som er hele
#  flermiljø-mekanismen. Godkjenningsporten ligger ikke her – den ligger på
#  GitHub-miljøet prod, og denne fila vet ingenting om den.
#
#  Det er riktig slik. En fil som beskriver HVA produksjon er, skal ikke også
#  bestemme HVEM som får lov til å røre den.
# =============================================================================
 
kortnavn   = "tim84"
project    = "iac-prod"
location   = "norwayeast"