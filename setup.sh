#!/bin/bash

# Script de configuración inicial para La Forja de Hefesto (gemini-sdd-hefesto)
# SO: Linux / macOS (Bash)

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}==================================================${NC}"
echo -e "${BLUE}  Instalando dependencias de La Forja de Hefesto  ${NC}"
echo -e "${BLUE}==================================================${NC}"

# 1. Determinar qué CLI está disponible (priorizar antigravity, luego gemini)
if command -v antigravity &> /dev/null; then
    CLI="antigravity"
elif command -v gemini &> /dev/null; then
    CLI="gemini"
else
    echo -e "${RED}Error: Ni 'antigravity' ni 'gemini' CLI están instalados en el sistema o en el PATH.${NC}"
    echo -e "${YELLOW}Por favor instala Antigravity CLI o Gemini CLI antes de continuar.${NC}"
    exit 1
fi

echo -e "\nDetectado CLI de trabajo: ${GREEN}$CLI${NC}"

# 2. Instalar extensión base de Superpowers
echo -e "\n${BLUE}[1/3] Instalando extensión base obra/superpowers...${NC}"
$CLI extensions install https://github.com/obra/superpowers

# 3. Instalar extensión de acompañamiento sddw-gemini
echo -e "\n${BLUE}[2/3] Instalando extensión base christianmerkwirth/sddw-gemini...${NC}"
$CLI extensions install https://github.com/christianmerkwirth/sddw-gemini

# 4. Enlazar localmente esta extensión
echo -e "\n${BLUE}[3/3] Enlazando localmente gemini-sdd-hefesto...${NC}"
$CLI extensions link .

echo -e "\n${GREEN}==================================================${NC}"
echo -e "${GREEN}  ¡Entorno configurado correctamente!             ${NC}"
echo -e "${GREEN}  Comandos habilitados: /sdd:init, /sdd:plan, etc.${NC}"
echo -e "${GREEN}==================================================${NC}"
