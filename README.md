### NetS3tM4st3r
permite gestionar la configuración de IP (cambio entre DHCP y IP estática) y DNS (cambio entre DHCP y DNS manual) de manera fácil y segura.

---

# NetS3tM4st3r

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![PowerShell](https://img.shields.io/badge/PowerShell-v5.1-blue.svg)](https://docs.microsoft.com/powershell/)
![GitHub followers](https://img.shields.io/github/followers/espinozan?style=social)

## Descripción

**NetS3tM4st3r** es un conjunto de scripts en PowerShell diseñado para automatizar configuraciones avanzadas de red en sistemas Windows. Este proyecto permite gestionar la configuración de IP (cambio entre DHCP y IP estática) y DNS (cambio entre DHCP y DNS manual) de manera fácil y segura, con un enfoque modular y robusto. **NetS3tM4st3r** incluye funcionalidades de seguridad avanzadas, como la desactivación temporal del firewall y la activación de la ejecución de scripts solo durante el proceso de configuración, después de realizar la configuracion automaticamente activa el firewall y desactiva la ejecucion de scripts de terceros para restablecer la seguridad del sistema aumentando su estabilidad.

> **Autor**: [espinozan](https://github.com/espinozan)

## Características

- Configuración automática o manual de IP (DHCP o estática).
- Configuración automática o manual de DNS.
- Enfoque modular con scripts específicos para cada tipo de configuración.
- Interfaz CLI (Command Line Interface) fácil de usar.
- Temporización de políticas de ejecución de scripts y control del firewall para máxima seguridad.

## Requisitos

- **Sistema operativo**: Windows 10 o superior
- **PowerShell**: Versión 5.1 o superior
- **Permisos**: Ejecución con privilegios de administrador

## Instalación

1. Clona este repositorio en tu máquina local:
   ```bash
   git clone https://github.com/espinozan/NetS3tM4st3r.git
   ```
2. Navega al directorio del proyecto:
   ```bash
   cd NetS3tM4st3r
   ```

## Estructura del Proyecto

El proyecto está dividido en varios scripts modulares:

- `main.ps1` - Script principal para la CLI del menú. Controla la activación de ejecución de scripts y firewall.
- `ConfigurarIPDHCP.ps1` - Configura la IP del adaptador de red en modo DHCP.
- `ConfigurarIPManual.ps1` - Permite la configuración manual de IP, incluyendo puerta de enlace y subred.
- `ConfigurarDNSDHCP.ps1` - Configura el DNS en modo DHCP.
- `ConfigurarDNSManual.ps1` - Permite la configuración manual de servidores DNS.

## Uso

Ejecuta `main.ps1` como administrador en PowerShell para acceder al menú principal:

```powershell
.\main.ps1
```

### Menú de Opciones

1. **Configurar IP a DHCP** - Cambia la configuración de IP al modo automático (DHCP).
2. **Configurar IP manualmente** - Solicita IP, subred y puerta de enlace para una configuración manual.
3. **Configurar DNS a DHCP** - Cambia la configuración de DNS al modo automático (DHCP).
4. **Configurar DNS manualmente** - Solicita servidores DNS principales y alternativos para una configuración manual.
5. **Salir** - Termina la ejecución del script y reactiva las configuraciones de seguridad.

Cada opción ejecutará el script correspondiente para realizar la configuración seleccionada.

## Ejemplo de Ejecución

```plaintext
Seleccione una opción:
1. Configurar IP a DHCP
2. Configurar IP manualmente
3. Configurar DNS a DHCP
4. Configurar DNS manualmente
5. Salir
Ingrese el número de la opción:
```

## Seguridad

**NetS3tM4st3r** incluye medidas de seguridad para evitar configuraciones de red no deseadas y limitar la exposición:

1. **Política de Ejecución de Scripts**: Solo permite la ejecución de scripts durante el proceso de configuración y la restablece a `Restricted` al finalizar.
2. **Control del Firewall**: Desactiva temporalmente el firewall durante la configuración y lo reactiva al terminar, asegurando la conectividad y reforzando la seguridad.

## Advertencia

Este script requiere permisos de administrador y es para configuraciones de red fundamentales. Se recomienda **ejecutar bajo supervisión** y **con el conocimiento técnico correspondiente** antes de su uso en entornos de producción.

## Contribución

Las contribuciones son bienvenidas. Puedes abrir issues y pull requests para ayudar a mejorar este proyecto. Por favor, sigue los lineamientos de contribución de GitHub.

## Licencia

Este proyecto está licenciado bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

Este `README.md` proporciona una guía completa y detalla cómo utilizar **NetS3tM4st3r**, resaltando las configuraciones de red y las medidas de seguridad para mejorar su implementación.
