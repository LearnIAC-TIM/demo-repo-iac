# =============================================================================
#  dev.tfvars  –  uendret fra øving 6
# -----------------------------------------------------------------------------
#  Fila som styrer HVA som bygges. Den andre halvdelen – HVOR regnskapet føres
#  – er key-flagget, og det står nå i workflowen i stedet for i terminalen din:
#
#    - run: terraform init -backend-config=backend.hcl \
#             -backend-config="key=modul7/dev/network.tfstate"
#    - run: terraform apply -auto-approve -var-file="dev.tfvars"
#
#  De to må peke på samme miljø i samme jobb. Byttes bare den ene, skrives
#  prod-verdier inn i dev-staten – og da er det ikke to miljøer lenger.
#  I en pipeline er det verre enn lokalt: ingen står og leser utskriften.
# =============================================================================

kortnavn = "tim84"
project  = "iac-dev"
location = "norwayeast"