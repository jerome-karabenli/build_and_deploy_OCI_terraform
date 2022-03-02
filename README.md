# Provisionner son infrastructure sur Oracle Cloud avec Terraform

<div id="top"></div>


<!-- ABOUT THE PROJECT -->
## A propos
C'est un ensemble de modules [Terraform](https://www.terraform.io/) permettant de provisionner son infrastructure sur [Oracle Cloud Infrastructure (OCI)](https://www.oracle.com/fr/cloud/) gratuitement et a vie grace a l'offre _always free_ d'Oracle.
Certains modules sont obligatoires d'autres optionnels.

## Stack utilisée
* [Terraform](https://www.terraform.io/) 

## Prérequis
* [Terraform](https://www.terraform.io/downloads)
* [Compte OCI](https://signup.cloud.oracle.com/?intcmp=OcomFreeTier&language=en_FR)
* [Compte CloudFlare(optionnel)](https://dash.cloudflare.com/sign-up)

<!-- ROADMAP -->
## Roadmap

- [x] Configurer le script principal.
- [x] Faire du SOC et avoir un fichier par module.
- [x] Ajouter le module `block stoage`.
- [x] Ajout dynamique des IP CloudFlare dans les regles de sécurité.
- [x] Génrer les clés __SSH__ d'acces aux vm directement dans Terraform.
- [ ] Ajouter le module `load balancer`.

Voir les [issues en cours](https://github.com/jerome-karabenli/build_and_deploy_OCI_terraform/issues) pour voir la liste complete des fonctionalités proposées et les bugs existants.

<!-- HOW TO -->
## Documentation
Vous trouverez [__un article sur mon blog__](https://jkarabenli.dev/posts/infra-as-code-oci/) expliquant l'utilisation des fichiers dans ce repo.

<!-- CONTRIBUTING -->
## Contribuer

Les contributions sont ce qui fait de la communauté open source un endroit incroyable pour apprendre, s'inspirer et créer. Toutes les contributions que vous apportez serront __grandement appréciées__.

Si vous avez une suggestion qui améliorerait le projet, vous pouvez `fork` le repo et créer une `pull request`. Vous pouvez aussi simplement ouvrir une `issue` avec le tag "enhancement".
N'oubliez pas de mettre une étoile au projet ! Merci encore!


1. Fork le projet
2. Créez votre branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push sur votre branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une __Pull Request__


<!-- CONTACT -->
## Liens

Lien du blog: [jkarabenli.dev](https://jkarabenli.dev/posts)

Lien du projet: [Github](https://github.com/jerome-karabenli/build_and_deploy_OCI_terraform)