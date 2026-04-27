# Mon Mini-Site Web — DS2

> Projet Docker & CI/CD — Industrialisation et automatisation du déploiement continu

## Prérequis

Avant de lancer le projet, assure-toi d'avoir installé les outils suivants :

| Outil | Version minimale | Lien de téléchargement |
|---|---|---|
| Docker Desktop | 24.0+ | https://www.docker.com/products/docker-desktop |
| Docker Compose | 2.0+ (inclus dans Docker Desktop) | — |
| Git | 2.40+ | https://git-scm.com |

### Vérifier les versions installées

```bash
docker --version        # Docker version 24.x.x
docker compose version  # Docker Compose version v2.x.x
git --version           # git version 2.x.x
```

## Lancer le projet

```bash
# 1. Cloner le dépôt
git clone https://github.com/ton-username/ton-repo.git
cd ton-repo

# 2. Lancer les conteneurs
docker-compose up --build

# 3. Ouvrir dans le navigateur
# http://localhost:80
```

## Arrêter le projet

```bash
docker-compose down
```

## Structure du projet
## CI/CD

Le pipeline GitHub Actions se déclenche automatiquement à chaque push
sur `main` et `develop`, ainsi qu'à chaque Pull Request.

**Étapes du pipeline :**
1. Validation HTML/CSS
2. Build de l'image Docker
3. Scan de sécurité (Trivy)

## Auteurs

- Prénom Nom — [@github-username](https://github.com/github-username)
- Prénom Nom — [@github-username](https://github.com/github-username)