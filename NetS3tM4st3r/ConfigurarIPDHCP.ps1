# Obtiene el adaptador de red activo
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }
if ($adapter) {
    Set-NetIPInterface -InterfaceAlias $adapter.Name -Dhcp Enabled
    Write-Output "IP configurada en DHCP para adaptador: $($adapter.Name)"
} else {
    Write-Output "Error: No se encontró un adaptador de red activo."
}
