# 🚀 GUIA RÁPIDO DE DEPLOY

## ⚡ OPÇÃO MAIS RÁPIDA: Netlify Drop (2 minutos)

1. Acesse: **https://app.netlify.com/drop**
2. Arraste a pasta inteira do projeto para a área
3. Pronto! Você receberá um link tipo: `https://random-name-123.netlify.app`
4. Você pode renomear depois em Settings > Site details

**Vantagens:**
- ✅ Grátis
- ✅ Sem precisar criar conta
- ✅ Link HTTPS automático
- ✅ Funciona em segundos

---

## 📦 GitHub Pages (Recomendado para longo prazo)

### Passo a Passo:

1. **Crie o repositório no GitHub:**
   - Acesse: https://github.com/new
   - Nome: `precificacao10x-landing` (ou qualquer nome)
   - Público ou Privado (público é grátis)
   - NÃO marque "Add README"
   - Clique em "Create repository"

2. **Conecte e faça upload:**
```bash
cd /Users/giliadebarth/Downloads/horizon/10x
git remote add origin https://github.com/SEU_USUARIO/precificacao10x-landing.git
git branch -M main
git push -u origin main
```

3. **Ative GitHub Pages:**
   - No GitHub, vá em: Settings > Pages
   - Source: "Deploy from a branch"
   - Branch: `main` / Folder: `/ (root)`
   - Clique em "Save"

4. **Seu site estará em:**
   - `https://SEU_USUARIO.github.io/precificacao10x-landing/`
   - (Pode levar 2-5 minutos para aparecer)

---

## 🎯 Vercel (Alternativa Rápida)

1. Instale: `npm i -g vercel`
2. Execute: `vercel`
3. Siga as instruções
4. Link gerado automaticamente

---

## ✅ DEPOIS DO DEPLOY

1. Teste todos os botões
2. Verifique o Meta Pixel no Events Manager
3. Compartilhe o link nas suas campanhas!

---

**Qualquer dúvida, me chame!** 🚀



