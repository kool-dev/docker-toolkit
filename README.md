# kool-dev/toolkit


Image with toolkit to use by development. This images can be help to use with [kool](https://github.com/kool-dev/kool).

## Usage

With `docker run`:

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

- terraform-aws
- full

### Variables

**TF_TOKEN**: The token to `.terraformrc` file  
**TF_HOSTNAME**: The hostname to `.terraformrc` file  

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
