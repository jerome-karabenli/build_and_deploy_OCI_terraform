# Build and deploy your infrastructure on OCI with Terraform

<div id="top"></div>


<!-- ABOUT THE PROJECT -->
## About The Project
This is a bundle of modules for deployement on Oracle Cloud using Terraform. Great thing about this is _always free_ offer. You can get documentation about the offer [here](https://www.oracle.com/cloud/free/#always-free)

You can find a guide on by blog [here](https://jkarabenli.dev/posts/infra-as-code-oci/) (is in french) 


### Built With

* [Terraform](https://www.terraform.io/) 
* [Bash]()

<!-- GETTING STARTED -->
## Getting Started
### Prerequisites

* [terraform](https://www.terraform.io/downloads)
```sh
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
$ sudo apt-add-repository "deb [arch=amd64] https://apt.      releases.hashicorp.com $(lsb_release -cs) main"
$ sudo apt-get update && sudo apt-get install terraform
```
<!-- ROADMAP -->
## Roadmap

- [x] Setup main script
- [x] Have separation of concerns (with separated conf file)
- [x] Add block storage module
- [x] Add Cloudflare ip's dynamic population
- [x] Generate ssh keys directy in Terraform
- [ ] Add load balancer module

See the [open issues](https://github.com/jerome-karabenli/build_and_deploy_OCI_terraform/issues) for a full list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- CONTACT -->
## Contact

mail: __contact@jkarabenli.dev__

Project Link: [https://github.com/jerome-karabenli/build_and_deploy_OCI_terraform](https://github.com/jerome-karabenli/build_and_deploy_OCI_terraform)