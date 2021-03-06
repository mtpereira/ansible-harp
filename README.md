# Harp.js [![Build Status](https://travis-ci.org/mtpereira/ansible-harp.svg)](https://travis-ci.org/mtpereira/ansible-harp)

Ansible role for installing Harpjs and compiling an webapp.

This role installs Harp (http://harpjs.com/) and builds a webapp from a given git repository or tarball.

## Requirements

None.

## Role Variables

### Required

* `harp_build_site_name`: Webapp name, used for naming the subdirectory where the compiled webapp will be stored. **Required**.
* `harp_build_git_repo`: Git repository URL. **Required if** `harp_build_source_type` is set to `git`.
* `harp_build_tar_file`: Local path for the webapp sources tarball. **Required if** `harp_build_source_type` is set to `tar`.

### Optional/Defaults

* `harp_build_sources_path`: Directory where the sources will be saved. Defaults to `/tmp/harp_sources`.
* `harp_build_output_path`: Directory where the compiled webapp will be stored. Defaults to `/tmp/harp_output`.
* `harp_build_source_type`: Defines whether to fetch the webapp sources from a git repository (`git`) or a local tarball (`tar`). Defaults to `git`.
* `harp_build_git_repo_branch`: Git branch to fetch. Defaults to `master`.
* `harp_build_assets`: List with files and/or directories inside an `_assets` dir in your webapp source. It is used for placing non-compiled assets in your webapp after compilation.
* `harp_install_state`: State for `npm` module for harpjs installation, which can be `present`, `latest` or `absent`. Defaults to `present`.

## Dependencies

* **nodesource.node** for installing nodejs.

## Testing

For testing purposes, a Vagrantfile was added. Simply run ```./test.sh``` in your working copy dir to get a Debian host up and provisioned with ```harp.yml``` playbook.

## License

MIT

## Thanks

Thanks to [@nodesource](https://github.com/nodesource) for their [nodejs role](https://github.com/nodesource/ansible-nodejs-role/), [@Ansibles](https://github.com/Ansibles) for their [nodejs role](https://galaxy.ansible.com/list#/roles/557) and [@cauliturtle](https://github.com/cauliturtle) for allowing me to use his [harp-simple-blog](https://github.com/cauliturtle/harp-simple-blog) for testing and CI!

## Author Information

[GitHub project page](https://github.com/mtpereira/ansible-harp)

[Manuel Tiago Pereira](http://mtpereira.github.io)

