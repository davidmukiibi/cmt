# Wordpress site

```sh
$ cd packer_configs
$ packer build packer.json
```

This will build a machine image and output an image ID when completed. The ID should look like this:
```sh
master-image-1539277063
```
After this, run:

```sh
$ cd ../terraform_configs
```
While in here, in the `variables.tf` file, edit this variable's default value (`assessment_base_image`) to the machine image ID packer "output-ed" earlier.
Something like:
```
variable "assessment_base_image" {
  type    = "string"
  default = "master-image-1539277385"
}
```

When you acchieve this, run:

```sh
$ terraform plan
```
to visually confirm what reasources terraform will indeed create, and then:

```sh
$ terraform apply
```
to actually create the resources declared.

when this is done, headover to [console.cloud.google.com], select the correct `email` you authenticated with in the top right corner, and then select the correct `project` you are working with in the top left corner.

After this, in the humberger menu, select the `compute engine` section and there you will have your instance. Copy the `"external IP"` and paste it into your browser. Viola there you will have your wordpress site running.
