# Lancement de l'application wordpress

## Exercice

Dans cet exercice vous allez créer un Pod contenant 2 containers permettant de lancer une application wordpress.

### 1. Création de la spécification

Créez un fichier yaml *wordpress_pod.yaml* définissant un Pod ayant les propriétés suivantes:
- nom du Pod: *wp*
- un premier container:
  - nommé *wordpress*
  - basé sur l'image *wordpress:4.9-apache*
  - définissant la variable d'environnement *WORDPRESS_DB_PASSWORD* avec pour valeur *mysqlpwd* (cf note)
  - définissant la variable d'environnement *WORDPRESS_DB_HOST* avec pour valeur *127.0.0.1* (cf note)
- un second container:
  - nommé *mysql*
  - basé sur l'image *mysql:5.7*
  - définissant la variable d'environnement *MYSQL_ROOT_PASSWORD* avec pour valeur *mysqlpwd* (cf note)

Note: chaque container peut définir une clé *env*, celle-ci contenant une liste de variables d'environnement sous la forme de paires clé / valeur

### 2. Lancement du Pod

Lancez le Pod à l'aide de *kubectl*

### 3. Vérification du status du Pod

Utilisez *kubectl* pour vérifier l'état du Pod.

Au bout de quelques secondes, il devrait être dans l'état *Running* (le temps que les images des containers soient téléchargées depuis le DockerHub).

### 4. Accès à l'application

Forwardez le port *8080* de la machine hôte sur le port *80* du container *wordpress*.

Lancez un navigateur sur http://localhost:8080

En ouvrant un navigateur sur l'URL indiquée, vous obtiendrez l'interface web de setup de *Wordpress*.

### 5. Suppression du Pod

A l'aide de *kubectl* supprimez le Pod *wp*.

