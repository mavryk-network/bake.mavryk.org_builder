# docs.tez.capital builder

repository for linking and building docs.tez.capital

## development

Right now builder development works on linux only.

1. clone builde repository with modules
	- `git clone --recurse-submodules https://github.com/tez-capital/docs.tez.capital_builder docs-builder`
2. inject generated docs
	- `sh tools/inject.sh`
3. start dev server
	- `hugo server`