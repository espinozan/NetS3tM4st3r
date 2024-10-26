# Obtiene el adaptador de red activo
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }
if ($adapter) {
    Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ResetServerAddresses
    Write-Output "DNS configurado en DHCP para adaptador: $($adapter.Name)"
} else {
    Write-Output "Error: No se encontró un adaptador de red activo."
}
