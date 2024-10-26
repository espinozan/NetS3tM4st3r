# Solicita la configuración de IP
$ip = Read-Host "Ingrese la dirección IP"
$subnet = Read-Host "Ingrese la máscara de subred (en formato CIDR, ej. 24)"
$gateway = Read-Host "Ingrese la puerta de enlace"

# Obtiene el adaptador de red activo
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }
if ($adapter) {
    try {
        New-NetIPAddress -InterfaceAlias $adapter.Name -IPAddress $ip -PrefixLength $subnet -DefaultGateway $gateway
        Write-Output "IP configurada manualmente para adaptador: $($adapter.Name)"
    } catch {
        Write-Output "Error configurando IP manual: $_"
    }
} else {
    Write-Output "Error: No se encontró un adaptador de red activo."
}
