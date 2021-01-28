# kool-dev/toolkit


Image with toolkit to use by development. This images can be help to use with [kool](https://github.com/kool-dev/kool).

## Usage

With `docker run`:

### Terraform with Aws Cli
```sh
docker run -it --rm kooldev/toolkit:1.0-terraform-aws terraform --version 
docker run -it --rm kooldev/toolkit:1.0-terraform-aws aws --version 
```

### Full
```sh
docker run -it --rm kooldev/toolkit:1.0-full terraform --version 
docker run -it --rm kooldev/toolkit:1.0-full aws --version 
docker run -it --rm kooldev/toolkit:1.0-full kubectl --help 
docker run -it --rm kooldev/toolkit:1.0-full docker --version 
docker run -it --rm kooldev/toolkit:1.0-full docker-compose --version 
docker run -it --rm kooldev/toolkit:1.0-full doctl version 
docker run -it --rm kooldev/toolkit:1.0-full helm version 
```

### Available Tags

- terraform-aws
- full

### Variables

**TF_TOKEN**: The token to `.terraformrc` file  
**TF_HOSTNAME**: The hostname to `.terraformrc` file  

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
