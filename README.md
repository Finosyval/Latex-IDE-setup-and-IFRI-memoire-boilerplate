# Guide complet pour configurer un environnement LaTeX dans votre IDE : cas de rédaction de mémoires IFRI

.

## 📋 Table des matières

1. [Prérequis](#prérequis)
2. [Installation étape par étape](#installation-étape-par-étape)
3. [Structure du projet](#structure-du-projet)
4. [Utilisation](#utilisation)

---

## 🔧 Prérequis

- **VS Code ou n'importe quel IDE**  installé sur votre machine
- Une connexion Internet pour télécharger les logiciels nécessaires
- Environ 3 Go d'espace disque disponible

---

## 📥 Installation étape par étape

### Étape 1 : Installer Strawberry Perl

**Strawberry Perl** est nécessaire pour exécuter certains scripts Perl utilisés par les outils LaTeX, notamment `latexmk` qui automatise la compilation des documents LaTeX.

1. Téléchargez Strawberry Perl depuis : [https://strawberryperl.com/](https://strawberryperl.com/)
2. Choisissez la version appropriée pour votre système (64-bit recommandé)
3. Lancez l'installateur
4. Suivez l'assistant d'installation avec les options par défaut
5. L'installateur ajoutera automatiquement Perl au PATH système
6. Redémarrez votre ordinateur après l'installation

**Pourquoi Strawberry Perl ?**
- Permet l'utilisation de `latexmk`, un outil d'automatisation qui :
  - Compile automatiquement votre document le nombre de fois nécessaire
  - Gère les références croisées, la bibliographie et l'index
  - Détecte les dépendances et recompile uniquement ce qui est nécessaire

### Étape 2 : Installer MiKTeX

**MiKTeX** est une distribution LaTeX pour Windows qui fournit tous les packages et outils nécessaires pour compiler vos documents LaTeX.

1. Téléchargez MiKTeX depuis le site officiel : [https://miktex.org/download](https://miktex.org/download)
2. Lancez l'installateur téléchargé
3. Suivez les instructions d'installation :
   - Choisissez "Install MiKTeX for all users" (recommandé) ou "Install MiKTeX for me only"
   - Sélectionnez le répertoire d'installation (par défaut : `C:\Program Files\MiKTeX`)
   - Configurez les préférences :
     - **Install missing packages** : Sélectionnez "Yes" (installation automatique des packages manquants)
4. Patientez pendant l'installation (cela peut prendre plusieurs minutes)
5. Une fois terminé, redémarrez votre ordinateur

**Pourquoi MiKTeX ?**
- Fournit le compilateur LaTeX (pdflatex, xelatex, lualatex)
- Gère automatiquement l'installation des packages LaTeX manquants
- Inclut les outils de gestion bibliographique (bibtex, biber)



### Étape 3 : Installer l'extension LaTeX Workshop dans votre editeur

**LaTeX Workshop** est l'extension qui transforme votre IDE en un IDE LaTeX complet avec compilation en temps réel, prévisualisation PDF, et auto-complétion.

1. Ouvrez VS Code
2. Accédez à la section Extensions (raccourci : `Ctrl+Shift+X`)
3. Dans la barre de recherche, tapez : `LaTeX Workshop`
4. Trouvez l'extension développée par **James Yu**
5. Cliquez sur **Install**
6. Attendez la fin de l'installation

**Fonctionnalités de LaTeX Workshop :**
- **Compilation automatique** : Compile votre document à chaque sauvegarde
- **Prévisualisation PDF intégrée** : Visualisez le résultat directement dans VS Code
- **Synchronisation bidirectionnelle** : Cliquez dans le PDF pour voir le code source correspondant, et vice versa
- **Auto-complétion** : Suggestions intelligentes pour les commandes LaTeX
- **Détection d'erreurs** : Affiche les erreurs de compilation en temps réel
- **Snippets** : Raccourcis pour insérer rapidement des structures LaTeX courantes

---


## 📁 Structure du projet

Ce dépôt contient deux dossiers principaux, chacun ayant un objectif spécifique :

### 1. `test-environment/`

**Objectif** : Environnement de test pour vérifier que votre installation LaTeX fonctionne correctement.

**Contenu :**
- `hello-world.tex` : Un document LaTeX minimal pour tester votre configuration
- `.gitignore` : Exclut les fichiers générés automatiquement (`.aux`, `.log`, `.pdf`, etc.) 

**Utilisation :**
1. Ouvrez le fichier `hello-world.tex`
2. Sauvegardez le fichier (`Ctrl+S`)
3. LaTeX Workshop devrait automatiquement compiler le document
4. Un fichier PDF sera généré et affiché dans VS Code
5. Si vous voyez le message "Test succeed. U can populate this folder with ur files", votre environnement est correctement configuré !

**Note :** Vous pouvez utiliser ce dossier pour expérimenter, tester de nouvelles commandes LaTeX, ou créer vos propres fichiers de test.

### 2. `IFRI-memoire-template/`

**Objectif** : Version stable du template officiel pour la rédaction de mémoires à l'IFRI (Institut de Formation et de Recherche en Informatique).

**Contenu :**
- `main.tex` : Fichier principal du mémoire (point d'entrée)
- `ifri.cls` : Classe LaTeX personnalisée pour le format IFRI
- Fichiers de sections :
  - `0-dedicace.tex` : Page de dédicace
  - `1-remerciements.tex` : Remerciements
  - `2-resume.tex` : Résumé du mémoire
  - `3-introduction.tex` : Introduction générale
  - `4-conclusion.tex` : Conclusion générale
- Dossiers de chapitres :
  - `1-partie/`, `2-partie/`, `3-partie/` : Contiennent les chapitres de votre mémoire
- `annexe.tex` : Annexes du mémoire
- `biblio.bib` : Fichier de bibliographie (références)
- `glossaire_reduit.tex` : Glossaire des termes techniques
- `images/` : Dossier pour stocker vos images et figures
- `.gitignore` : Exclut les fichiers générés de la compilation



## 🚀 Utilisation

### Tester votre installation

1. Ouvrez votre ide
2. Ouvrez le dossier `test-environment`
3. Ouvrez le fichier `hello-world.tex`
4. Sauvegardez le fichier (`Ctrl+S`)
5. LaTeX Workshop compile automatiquement le document
6. Le PDF s'ouvre automatiquement dans un onglet VS Code


### Commandes utiles dans LaTeX Workshop

- **Compiler manuellement** : `Ctrl+Alt+B`
- **Voir le PDF** : `Ctrl+Alt+V`
- **Nettoyer les fichiers auxiliaires** : `Ctrl+Alt+C`
- **Voir les logs** : Cliquez sur l'icône LaTeX dans la barre latérale
- **SyncTeX (PDF → Code)** : `Ctrl+Clic` sur le PDF
- **SyncTeX (Code → PDF)** : `Ctrl+Alt+J`


## 🛠️ Dépannage

### Le PDF ne se génère pas
- Vérifiez que MiKTeX et Strawberry Perl sont bien installés
- Consultez le panneau "Output" dans VS Code (View → Output → LaTeX Workshop)
- Vérifiez qu'il n'y a pas d'erreurs de syntaxe dans votre fichier `.tex`

### Packages manquants
- MiKTeX devrait installer automatiquement les packages manquants
- Si ce n'est pas le cas, ouvrez "MiKTeX Console" et installez les packages manuellement

### LaTeX Workshop ne démarre pas
- Redémarrez votre editeur
- Vérifiez que l'extension est bien activée
- Désactivez puis réactivez l'extension

### Problèmes de compilation
- Nettoyez les fichiers auxiliaires : `Ctrl+Alt+C`
- Recompilez : `Ctrl+Alt+B`

---

## 📝 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

---

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request pour améliorer ce template.

---

**Bon courage pour la rédaction de votre mémoire ! 📖✨**
