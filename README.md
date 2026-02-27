# Profusion — Theme WordPress

> Theme WordPress sur mesure pour sites vitrines et sites business

---

## Presentation

Profusion est un theme WordPress developpe dans le cadre d'un projet d'etudes, construit a partir d'un theme starter , avec pour objectifs la maitrise du langage PHP et l'apprentissage approfondi de l'ecosysteme WordPress (structure de theme, hooks, Customizer, templates...).

Le theme est pense pour des sites vitrines et sites business : structure claire, code bien organise et personnalisation aisee via les outils natifs de WordPress.

> Note : Ce depot contient une installation WordPress complete. Le theme custom se trouve dans `wp-content/themes/profusion/`.

---

## Objectifs pedagogiques

Ce projet a ete realise dans un contexte scolaire afin de valider les competences suivantes :

- Maitrise du PHP applique au developpement WordPress
- Comprehension de la hierarchie des templates WordPress
- Utilisation des hooks (`add_action`, `add_filter`) et du systeme de theme
- Gestion des menus, widgets et options via le Customizer
- Bonne organisation et lisibilite du code

---

## Fonctionnalites

- Design responsive (mobile-first)
- Structure orientee site vitrine / business
- Code PHP modulaire et organise
- Compatible avec l'editeur WordPress 
- Personnalisation via le Customizer WordPress
- Optimise pour le referencement naturel (SEO)

---

## Technologies utilisees

| Technologie | Usage |
|---|---|
| PHP | Logique du theme, templates, hooks WordPress |
| Bootstrap | Framework CSS, mise en page responsive |
| CSS | Styles personnalises |
| JavaScript | Interactions dynamiques, scripts front-end |

---

## Structure du projet

```
wp-content/themes/profusion/
├── css/
├── js/
├── images/
├── header.php
├── footer.php
├── index.php
├── front-page.php
├── about.php
├── client.php
├── services.php
├── contact.php
├── functions.php
├── style.css
├── screenshot.png
└── Wordpress.sql
```

---

## Installation

### Option 1 — Cloner le theme seul

Copier uniquement le theme dans le dossier `themes` d'une installation WordPress existante :

```bash
git clone https://github.com/Sonia-Devellia/Wordpress-Theme.git
cp -r Wordpress-Theme/wp-content/themes/profusion /chemin/vers/wordpress/wp-content/themes/
```

### Option 2 — Utiliser le depot complet en local

```bash
git clone https://github.com/Sonia-Devellia/Wordpress-Theme.git
cd Wordpress-Theme
```

Configurer la base de donnees dans `wp-config.php`, puis lancer avec un serveur local (XAMPP, WAMP, Local by Flywheel...).

### Activation du theme

Depuis le back-office WordPress :

```
Apparence > Themes > Profusion > Activer
```

---

## Prerequis

- WordPress 6.0+
- PHP 8.0+
- MySQL 5.7+
- Serveur web Apache

---

## Captures d'ecran

*(Ajoute ici des captures d'ecran de ton theme pour donner un apercu visuel)*

---

## Auteure

Developpe par [Sonia Devellia](https://github.com/Sonia-Devellia)

---

## Licence

Ce projet est distribue sous licence incluse dans le fichier [`license.txt`](license.txt).
