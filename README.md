## Running packer build with hcl template
```bash
packer build -on-error=ask -var-file public.variables.pkrvars.hcl -var-file private.vsphere.pkrvars.hcl rocky-9.4.pkr.hcl
```
