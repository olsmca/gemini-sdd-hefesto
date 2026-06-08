# Script de configuración inicial para La Forja de Hefesto (gemini-sdd-hefesto)
# SO: Windows (PowerShell)

Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "  Instalando dependencias de La Forja de Hefesto  " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

# 1. Determinar qué CLI está disponible (priorizar antigravity, luego gemini)
$cli = $null
if (Get-Command antigravity -ErrorAction SilentlyContinue) {
    $cli = "antigravity"
} elseif (Get-Command gemini -ErrorAction SilentlyContinue) {
    $cli = "gemini"
} else {
    Write-Error "Ni 'antigravity' ni 'gemini' CLI están instalados en el sistema o en el PATH."
    Write-Host "Por favor instala Antigravity CLI o Gemini CLI antes de continuar." -ForegroundColor Yellow
    exit 1
}

Write-Host "`nDetectado CLI de trabajo: $cli" -ForegroundColor Green

# 2. Instalar extensión base de Superpowers
Write-Host "`n[1/3] Instalando extensión base obra/superpowers..." -ForegroundColor Blue
& $cli extensions install https://github.com/obra/superpowers

# 3. Instalar extensión de acompañamiento sddw-gemini
Write-Host "`n[2/3] Instalando extensión base christianmerkwirth/sddw-gemini..." -ForegroundColor Blue
& $cli extensions install https://github.com/christianmerkwirth/sddw-gemini

# 4. Enlazar localmente esta extensión
Write-Host "`n[3/3] Enlazando localmente gemini-sdd-hefesto..." -ForegroundColor Blue
& $cli extensions link .

Write-Host "`n==================================================" -ForegroundColor Green
Write-Host "  ¡Entorno configurado correctamente!             " -ForegroundColor Green
Write-Host "  Comandos habilitados: /sdd:init, /sdd:plan, etc." -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Green
