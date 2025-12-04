#!/bin/bash

echo "🚀 Fazendo deploy na Netlify..."
echo ""

# Verifica se netlify-cli está disponível
if command -v netlify &> /dev/null; then
    echo "✅ Netlify CLI encontrado"
    netlify deploy --prod --dir=.
elif command -v npx &> /dev/null; then
    echo "✅ Usando npx para executar Netlify CLI"
    npx --yes netlify-cli deploy --prod --dir=.
else
    echo "❌ Netlify CLI não encontrado"
    echo ""
    echo "📦 Arquivo ZIP criado: precificacao10x-landing.zip"
    echo ""
    echo "Para fazer deploy manual:"
    echo "1. Acesse: https://app.netlify.com/drop"
    echo "2. Arraste o arquivo precificacao10x-landing.zip"
    echo "3. Pronto! Link gerado automaticamente"
    exit 1
fi



