#!/usr/bin/env node

const https = require('https');
const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

console.log('🚀 Iniciando deploy automático na Netlify...\n');

// Método 1: Tentar usar Netlify CLI
function deployWithCLI() {
    try {
        console.log('📦 Tentando usar Netlify CLI...');
        execSync('npx --yes netlify-cli deploy --prod --dir=.', { 
            stdio: 'inherit',
            cwd: __dirname 
        });
        console.log('\n✅ Deploy concluído!');
        return true;
    } catch (error) {
        console.log('\n⚠️  Netlify CLI requer autenticação interativa');
        return false;
    }
}

// Método 2: Instruções para upload manual
function showManualInstructions() {
    console.log('\n📋 INSTRUÇÕES PARA DEPLOY MANUAL:\n');
    console.log('1. Acesse: https://app.netlify.com/drop');
    console.log('2. Arraste a pasta do projeto ou o arquivo ZIP');
    console.log('3. Aguarde alguns segundos');
    console.log('4. Seu site estará online!\n');
    console.log('📁 Arquivo ZIP criado: precificacao10x-landing.zip\n');
}

// Tenta deploy automático
if (!deployWithCLI()) {
    showManualInstructions();
}



