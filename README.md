Description
===========

Change source list to mirror url.

Requirements
============

## Platform:

* Ubuntu

    * precise(12.04)
    * trusty(14.04)
    * wily(15.10)
    * xenial(16.04)

Here is supported until.

Attributes
==========

See `attributes/default.rb` for default values.

* `node["ubuntu"]["mirror_site_url"]` - mirror url, default `http://mirrors.ustc.edu.cn/ubuntu/`.
* `node["ubuntu"]["version"]` - used ubuntu version, default latest LTS version `16.04`.
* `node["ubuntu"]["need_deb_src"]` - add deb-src url in source list or not, default `false`.
* `node["ubuntu"]["need_update"]` - run `apt-get update` command after the change, default `false`.

Usage
=====

    { "run_list": ["recipe[ubuntu-change-source-list]"] }

If you need deb-src and run `apt-get update` command after the change, like this

    {
        'ubuntu': {
            'need_deb_src': true,
            'need_update': true
        }
    }

License and Author
==================

Author:: Thomas Yang <ywjno.dev@gmail.com>

Copyright:: 2013, Thomas Yang

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
