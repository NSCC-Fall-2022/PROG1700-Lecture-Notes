# Problem: Tax Time!!
# A person made $32000 for year
# How much federal and provincial tax do they have?

# Federal Tax Rate: 15%
# Provincial Tax Rate: 8.79% up $29,590 and 14.95% for the remainder

# Federal Base Amount: $13,808
# Provincial Base Amount: $11,481

$Income = 32000             # $32,000

$FederalTaxRate = 0.15      # 15%
$FederalBaseAmount = 13808  # $13,808
$FederalTax = ($Income - $FederalBaseAmount) * $FederalTaxRate
$FederalTax = [Math]::Round($FederalTax, 2)
Write-Host "Federal Tax: `$$($FederalTax)"
Write-Host ("Federal Tax: `${0:#.00}" -f $FederalTax)
Write-Host ("Federal Tax: {0:C}" -f $FederalTax)

$ProvincialTaxRate = 0.0879     # 8.79%
$ProvincialBaseAmount = 11481   # $11,481 up to $29,590
$ProvincialTax1 = ($Income - $ProvincialBaseAmount) * $ProvincialTaxRate
Write-Host $Income, $ProvincialTaxRate, $ProvincialBaseAmount, $ProvincialTax1


$ProvincialTaxRate = 0.1495     # 14.95%
$ProvincialTaxedAmount = $Income - 29590  # $29,591 up to $32000
$ProvincialTax2 = $ProvincialTaxedAmount * $ProvincialTaxRate
Write-Host "'$Income', '$ProvincialTaxRate', '$ProvincailTaxedAmount', '$ProvincialTax2'"

$ProvincialTax = [Math]::Round($ProvincialTax1 + $ProvincialTax2, 2)
Write-Host ("Provincial Tax: {0:C}" -f $ProvincialTax)