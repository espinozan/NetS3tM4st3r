# Activa la ejecución de scripts sin restricciones
Set-ExecutionPolicy Bypass -Scope Process -Force

# Desactiva el firewall temporalmente
Write-Output "Desactivando el firewall..."
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

# Función para mostrar el menú y procesar la selección del usuario
function Show-Menu {
    cls
    Write-Output "Seleccione una opcion:"
    Write-Output "1. Configurar IP a DHCP"
    Write-Output "2. Configurar IP manualmente"
    Write-Output "3. Configurar DNS a DHCP"
    Write-Output "4. Configurar DNS manualmente"
    Write-Output "5. Salir"
    
    $option = Read-Host "Ingrese el numero de la opcion"
    switch ($option) {
        1 { .\ConfigurarIPDHCP.ps1 }
        2 { .\ConfigurarIPManual.ps1 }
        3 { .\ConfigurarDNSDHCP.ps1 }
        4 { .\ConfigurarDNSManual.ps1 }
        5 { 
            Write-Output "Saliendo..."
            return
        }
        Default { 
            Write-Output "Opcion invalida, intente nuevamente."
            Show-Menu
        }
    }
}

# Mostrar el menú y ejecutar la opción seleccionada
Show-Menu

# Restaurar el firewall
Write-Output "Reactivando el firewall..."
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# Restaurar la política de ejecución de scripts
Write-Output "Restaurando politica de ejecucion de scripts..."
Set-ExecutionPolicy Restricted -Scope Process -Force
