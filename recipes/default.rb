#
# Cookbook Name:: ubuntu-change-source-list
# Recipe:: default
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

execute "back up old sources list" do
  command <<-COMMAND
  (sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak)
  (sudo rm /etc/apt/sources.list)
  (sudo touch /etc/apt/sources.list)
  COMMAND
end

support_ubuntu_version = {
  '20.04' => 'focal',
  '22.04' => 'jammy',
  '23.10' => 'mantic',
  '24.04' => 'noble'
}

template '/etc/apt/sources.list' do
  owner "root"
  group "root"
  mode "0755"
  source "sources.list.erb"
  variables(
    :code_name => support_ubuntu_version[node['ubuntu']['version']] || 'focal'
  )
end

execute "apt-get update" do
  command "apt-get update"
  ignore_failure true
  only_if do
    node['ubuntu']['need_update']
  end
end
