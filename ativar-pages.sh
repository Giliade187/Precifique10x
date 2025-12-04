#!/bin/bash

echo "🚀 Ativando GitHub Pages automaticamente..."
echo ""

# Verifica se gh está instalado
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI encontrado"
    echo "🔐 Fazendo login no GitHub..."
    gh auth login --web
    
    echo "📦 Configurando GitHub Pages..."
    gh api repos/Giliade187/Precifique10x/pages \
        -X POST \
        -f source[branch]=main \
        -f source[path]=/ \
        --jq '.html_url' && echo "✅ GitHub Pages ativado!"
else
    echo "⚠️  GitHub CLI não encontrado"
    echo ""
    echo "📋 ATIVAÇÃO MANUAL (2 minutos):"
    echo ""
    echo "1. Acesse: https://github.com/Giliade187/Precifique10x/settings/pages"
    echo ""
    echo "2. Configure:"
    echo "   - Source: Deploy from a branch"
    echo "   - Branch: main"
    echo "   - Folder: / (root)"
    echo ""
    echo "3. Clique em 'Save'"
    echo ""
    echo "4. Aguarde 2-5 minutos"
    echo ""
    echo "🎯 Seu site estará em:"
    echo "   https://giliade187.github.io/Precifique10x/"
fi



