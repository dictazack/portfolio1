# 🚀 Portfolio Zakaria Driouich

Portfolio moderne et professionnel déployé automatiquement via CI/CD avec GitHub Actions et GitHub Pages.

![Portfolio Preview](https://img.shields.io/badge/Status-Live-success)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## 🌟 Fonctionnalités

- ✨ Design moderne avec **Glassmorphism**
- 🌓 Mode sombre/clair automatique
- 🎨 Animations fluides et interactions
- 📱 Entièrement responsive (Mobile, Tablet, Desktop)
- ⚡ Performance optimisée
- 🔄 Déploiement automatique CI/CD
- 🎯 SEO optimisé
- 🔐 HTTPS sécurisé par défaut

## 🛠️ Technologies utilisées

### Frontend
- **HTML5** - Structure sémantique
- **CSS3** - Animations et transitions modernes
- **JavaScript ES6+** - Interactivité
- **AOS** - Animations au scroll
- **Typed.js** - Effet machine à écrire

### DevOps & CI/CD
- **GitHub Actions** - Pipeline CI/CD automatique
- **GitHub Pages** - Hébergement gratuit et fiable
- **Git** - Contrôle de version

### Design
- **Glassmorphism** - Effet verre moderne
- **Google Fonts** - Typographie professionnelle (Inter, JetBrains Mono)
- **Font Awesome** - Icônes vectorielles

## 📦 Installation locale

### Prérequis
- Git installé
- Un navigateur web moderne
- (Optionnel) Un serveur web local comme Live Server

### Étapes

1. **Cloner le repository**
```bash
git clone https://github.com/VOTRE_USERNAME/portfolio-zakaria.git
cd portfolio-zakaria
```

2. **Ouvrir le projet**
```bash
# Option 1: Ouvrir directement index.html dans votre navigateur
open index.html

# Option 2: Utiliser un serveur local (recommandé)
# Avec Python 3
python -m http.server 8000

# Avec Node.js (npx http-server)
npx http-server

# Avec VS Code Live Server
# Clic droit sur index.html > Open with Live Server
```

3. **Accéder au portfolio**
```
http://localhost:8000
```

## 🚀 Déploiement sur GitHub Pages

### Méthode automatique (Recommandée)

1. **Créer un nouveau repository sur GitHub**
   - Nom recommandé: `portfolio` ou `VOTRE_USERNAME.github.io`
   - Public ou Private (Pages fonctionne dans les deux cas)

2. **Pusher votre code**
```bash
git init
git add .
git commit -m "🎉 Initial commit - Portfolio professionnel"
git branch -M main
git remote add origin https://github.com/VOTRE_USERNAME/portfolio.git
git push -u origin main
```

3. **Activer GitHub Pages**
   - Aller dans les **Settings** de votre repository
   - Section **Pages** (menu de gauche)
   - Source: **GitHub Actions**
   - Le workflow `.github/workflows/deploy.yml` se déclenchera automatiquement

4. **Accéder à votre site**
   - URL: `https://VOTRE_USERNAME.github.io/portfolio/`
   - Ou: `https://VOTRE_USERNAME.github.io/` si le repo s'appelle `VOTRE_USERNAME.github.io`

### ⏱️ Temps de déploiement
- Premier déploiement: ~2-3 minutes
- Mises à jour suivantes: ~1-2 minutes

## 🎨 Personnalisation

### 1. Informations personnelles

Modifier dans `index.html`:
```html
<!-- Ligne 55: Nom -->
<h1 class="hero-name">
    Votre Nom <span class="gradient-text">Prénom</span>
</h1>

<!-- Ligne 344: Email -->
<a href="mailto:votre.email@example.com">votre.email@example.com</a>

<!-- Ligne 352: Téléphone -->
<a href="tel:+212XXXXXXXXX">+212 XXX XXX XXX</a>
```

### 2. Couleurs et thème

Modifier dans `src/css/style.css`:
```css
:root {
    --primary-color: #0066ff;      /* Couleur principale */
    --secondary-color: #00d4ff;     /* Couleur secondaire */
    --accent-color: #ff6b35;        /* Couleur accent */
}
```

### 3. Textes du Hero

Modifier dans `src/js/main.js`:
```javascript
strings: [
    'Votre Titre 1',
    'Votre Titre 2',
    'Votre Titre 3'
]
```

### 4. Ajouter votre CV

1. Placer votre CV dans le dossier `assets/`
2. Renommer en `CV_Zakaria_Driouich.pdf`
3. Ou modifier le lien dans `index.html` ligne 162:
```html
<a href="assets/VOTRE_CV.pdf" class="btn btn-outline" download>
```

## 📱 Structure du projet

```
portfolio-zakaria/
├── index.html                 # Page principale
├── src/
│   ├── css/
│   │   └── style.css         # Styles principaux
│   ├── js/
│   │   ├── main.js           # Logique principale
│   │   └── particles.js      # Animation particules
│   └── img/                  # Images
├── assets/                   # CV et documents
├── .github/
│   └── workflows/
│       └── deploy.yml        # Pipeline CI/CD
├── README.md                 # Documentation
└── LICENSE                   # Licence MIT
```

## 🔄 Architecture CI/CD

```
┌─────────────┐     ┌──────────────────┐     ┌─────────────────┐
│   GitHub    │────▶│ GitHub Actions   │────▶│  GitHub Pages   │
│  Repository │     │   (Build & Test) │     │   (Production)  │
└─────────────┘     └──────────────────┘     └─────────────────┘
      │                      │                         │
      │                      │                         │
   Push/PR              Auto Deploy              Live Site
```

### Workflow automatique
1. **Push** sur la branche `main`
2. **GitHub Actions** détecte le changement
3. **Build** du site statique
4. **Déploiement** automatique sur GitHub Pages
5. **Site live** en 1-2 minutes

## 🌐 Domaine personnalisé (Optionnel)

### Avec GitHub Pages

1. **Acheter un domaine** (ex: zakaria-driouich.com)
2. **Configurer DNS** chez votre registrar:
```
Type: A
Host: @
Value: 185.199.108.153
       185.199.109.153
       185.199.110.153
       185.199.111.153

Type: CNAME
Host: www
Value: VOTRE_USERNAME.github.io
```

3. **Configurer dans GitHub**
   - Settings > Pages > Custom domain
   - Entrer: `zakaria-driouich.com`
   - Activer "Enforce HTTPS"

4. **Attendre propagation DNS** (15 min - 48h)

## 📊 Performance

- **Lighthouse Score**: 95+
- **Temps de chargement**: < 2s
- **Taille totale**: < 500KB
- **Optimisé mobile**: ✅

## 🐛 Dépannage

### Le site ne se déploie pas
1. Vérifier que GitHub Pages est activé (Settings > Pages)
2. Vérifier que le workflow s'est exécuté (Actions tab)
3. Vérifier les permissions (Settings > Actions > General > Workflow permissions > Read and write)

### Les animations ne fonctionnent pas
1. Vérifier la console du navigateur (F12)
2. Vérifier que les CDN sont accessibles
3. Désactiver les bloqueurs de publicités

### Erreur 404
1. Vérifier le nom du repository
2. Vérifier l'URL: `USERNAME.github.io/REPO_NAME/`
3. Attendre 2-3 minutes après le premier déploiement

## 🤝 Contribution

Les contributions sont les bienvenues! Pour contribuer:

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 📞 Contact

**Zakaria Driouich**
- Email: Zakaria.driouich@outlook.fr
- Téléphone: +212 701 000 097
- LinkedIn: [linkedin.com/in/zakaria-driouich](https://linkedin.com/in/zakaria-driouich)
- Portfolio: [zakariadriouich.github.io/portfolio](https://zakariadriouich.github.io/portfolio)

## 🙏 Remerciements

- [Font Awesome](https://fontawesome.com) pour les icônes
- [Google Fonts](https://fonts.google.com) pour les polices
- [AOS](https://michalsnik.github.io/aos/) pour les animations
- [Typed.js](https://mattboldt.com/demos/typed-js/) pour l'effet typing
- [GitHub Pages](https://pages.github.com) pour l'hébergement gratuit

---

⭐ **Si ce projet vous a aidé, n'hésitez pas à lui donner une étoile!** ⭐

Fait avec ❤️ par Zakaria Driouich
