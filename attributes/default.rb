#
# Cookbook Name:: ubuntu-change-source-list
# Attributes:: default
#
# Copyright 2013, Thomas Yang
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['ubuntu']['mirror_site_url'] = 'http://mirrors.ustc.edu.cn/ubuntu/'
default['ubuntu']['version'] = '24.04'
default['ubuntu']['need_deb_src'] = false
default['ubuntu']['need_update'] = false
