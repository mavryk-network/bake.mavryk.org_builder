# bake.mavryk.org builder

repository for linking and building bake.mavryk.org

## development

Right now builder development works on linux only.

1. clone builde repository with modules
	- `git clone --recurse-submodules https://github.com/mavryk-network/bake.mavryk.org_builder docs-builder`
2. inject generated docs
	- `sh tools/inject.sh`
3. start dev server
	- `hugo server`