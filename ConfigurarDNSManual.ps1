# Solicita los servidores DNS
$dns1 = Read-Host "Ingrese el servidor DNS principal"
$dns2 = Read-Host "Ingrese el servidor DNS alternativo (opcional)"

# Obtiene el adaptador de red activo
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }
if ($adapter) {
    $dnsServers = @($dns1)
    if ($dns2 -ne "") { $dnsServers += $dns2 }
    
    try {
        Set-DnsClientServerAddress -InterfaceAlias $adapter.Name -ServerAddresses $dnsServers
        Write-Output "DNS configurado manualmente para adaptador: $($adapter.Name)"
    } catch {
        Write-Output "Error configurando DNS manual: $_"
    }
} else {
    Write-Output "Error: No se encontró un adaptador de red activo."
}
