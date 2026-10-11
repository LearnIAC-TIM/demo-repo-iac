# =============================================================================
#  variables.tf  –  NETTVERKSPROSJEKTET
# -----------------------------------------------------------------------------
#  Uendret fra øving 5. Det er verdt å stoppe ved: øvingen flyttet staten fra
#  disken din til Azure, og likevel endret ikke grensesnittet seg med ett tegn.
#
#  Det er fordi backend og variabler svarer på to helt ulike spørsmål:
#    variabler       → HVA skal bygges
#    backend + key   → HVOR føres regnskapet
#
#  To akser som ikke rører hverandre. Derfor kan du bytte backend uten å røre
#  variabler, og bytte miljø uten å røre backend-blokken.
# =============================================================================
 
variable "kortnavn" {
  description = "Ditt unike kortnavn. Brukes som prefiks i ALLE ressursnavn."
  type        = string
 
  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.kortnavn))
    error_message = "kortnavn må være 3–8 tegn, kun små bokstaver og tall."
  }
}
 
variable "project" {
  description = <<-EOT
    Prosjektnavn, andre ledd i navnekonvensjonen. Det er HER miljøet ligger:
    "iac-dev" i dev.tfvars, "iac-prod" i prod.tfvars.
    Uten et ulikt project-navn per miljø ville de to instansene forsøkt å
    opprette den samme ressursgruppa – og da hjelper det ikke at de har hver
    sin state. To adskilte regnskap over den samme ressursen er fortsatt en
    kollisjon.
  EOT
  type        = string
}
 
variable "location" {
  description = "Azure-region. Bruk samme region som backenden."
  type        = string
  default     = "norwayeast"
 
  validation {
    condition     = contains(["norwayeast", "westeurope", "northeurope", "uksouth"], var.location)
    error_message = "Regionen må være én av: norwayeast, westeurope, northeurope, uksouth (Azure Policy i fagets tenant)."
  }
}