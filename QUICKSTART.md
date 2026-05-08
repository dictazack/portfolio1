# ⚡ Quick Start Guide - Portfolio Zakaria

## 🚀 Déploiement en 5 minutes sur GitHub Pages

### 1️⃣ Créer un repository GitHub

1. Aller sur [GitHub](https://github.com/new)
2. Nom: `portfolio` ou `VOTRE_USERNAME.github.io`
3. Public
4. Créer le repository

### 2️⃣ Uploader les fichiers

**Option facile (Drag & Drop):**
1. Télécharger tous les fichiers de ce dossier
2. Dans votre repository, cliquer "uploading an existing file"
3. Glisser-déposer TOUS les fichiers
4. Commit changes

**Option Git (Ligne de commande):**
```bash
cd portfolio-zakaria
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/VOTRE_USERNAME/portfolio.git
git push -u origin main
```

### 3️⃣ Activer GitHub Pages

1. Settings > Pages
2. Source: **GitHub Actions**
3. Save

### 4️⃣ Attendre le déploiement

1. Onglet "Actions"
2. Attendre le ✅ (1-2 minutes)
3. Votre site est live! 🎉

### 5️⃣ Accéder à votre portfolio

URL: `https://VOTRE_USERNAME.github.io/portfolio/`

---

## ✏️ Personnalisation Rapide

### Changer votre nom et infos

Fichier: `index.html`

**Ligne 55-58:**
```html
<h1 class="hero-name">
    Zakaria <span class="gradient-text">Driouich</span>
</h1>
```
→ Remplacer par votre nom

**Ligne 344-352:**
```html
<a href="mailto:Zakaria.driouich@outlook.fr">
```
→ Remplacer par votre email

### Changer les couleurs

Fichier: `src/css/style.css` - Ligne 4

```css
--primary-color: #0066ff;  /* Votre couleur principale */
```

### Modifier les titres animés

Fichier: `src/js/main.js` - Ligne 22

```javascript
strings: [
    'Votre Titre 1',
    'Votre Titre 2',
]
```

---

## 📁 Structure des fichiers

```
portfolio-zakaria/
├── index.html           ← Page principale (à personnaliser)
├── src/
│   ├── css/
│   │   └── style.css   ← Styles (couleurs ici)
│   └── js/
│       └── main.js     ← Animations (titres ici)
└── assets/
    └── CV.pdf          ← Placez votre CV ici
```

---

## 🆘 Problèmes courants

**Site ne se charge pas?**
- Attendre 2-3 minutes après le premier déploiement
- Vérifier que GitHub Pages est activé
- Vider le cache: Ctrl+Shift+R

**URL exacte?**
- Si repo = `portfolio`: `username.github.io/portfolio/`
- Si repo = `username.github.io`: `username.github.io/`

**CSS ne fonctionne pas?**
- Vérifier que TOUS les fichiers sont uploadés
- Vérifier la console: F12

---

## 📞 Besoin d'aide?

Email: Zakaria.driouich@outlook.fr

---

**C'est tout! Votre portfolio est maintenant en ligne! 🚀**
