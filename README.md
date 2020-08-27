# kool-dev/toolkit


Image with toolkit to use by development. This images can be help to use with [kool](https://github.com/kool-dev/kool).

## Usage

With `docker run`:

### Terraform
```sh
docker run -it --rm kooldev/toolkit:0.13.1-terraform terraform --version
```

### Aws Cli
```sh
docker run -it --rm kooldev/toolkit:2.0.43-aws-cli aws --version
```

### Kubectl
```sh
docker run -it --rm kooldev/toolkit:1.18.2-kubectl kubectl --help
```

### Dind
```sh
docker run -it --rm kooldev/toolkit:1.25.5-docker-compose docker --version 
docker run -it --rm kooldev/toolkit:1.25.5-docker-compose docker-compose --version 
```

### Doctl
```sh
docker run -it --rm kooldev/toolkit:1.41.0-doctl doctl version 
```

### Helm
```sh
docker run -it --rm kooldev/toolkit:3.2.0-helm-cli helm version 
```

### Terraform with Aws Cli
```sh
docker run -it --rm kooldev/toolkit:terraform-aws terraform --version 
docker run -it --rm kooldev/toolkit:terraform-aws aws --version 
```

### Full
```sh
docker run -it --rm kooldev/toolkit:full terraform --version 
docker run -it --rm kooldev/toolkit:full aws --version 
docker run -it --rm kooldev/toolkit:full kubectl --help 
docker run -it --rm kooldev/toolkit:full docker --version 
docker run -it --rm kooldev/toolkit:full docker-compose --version 
docker run -it --rm kooldev/toolkit:full doctl version 
docker run -it --rm kooldev/toolkit:full helm version 
```

### Available Tags

- 0.13.1-terraform
- 2.0.43-aws-cli
- 1.18.2-kubectl
- 1.25.5-docker-compose
- 1.41.0-doctl
- 3.2.0-helm-cli
- terraform-aws
- full

### Variables

**TF_CONF_BASE64**: The `.terraformrc` file in base64, you can generate this with: `base64 .terraformrc`  
**AWS_CONF_BASE64**: The `.aws/config` file in base64, you can generate this with: `base64 .aws/config`  
**AWS_CRED_BASE64**: The `.aws/credentials` file in base64, you can generate this with: `base64 .aws/credentials`  

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
