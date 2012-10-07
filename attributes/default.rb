# Cookbook Name:: tarsnap
# Attributes:: tarsnap
#
# Copyright 2011,2012, ZephirWorks
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

default['tarsnap']['version']     = "1.0.32"
default['tarsnap']['cachedir']    = "/usr/local/tarsnap-cache"
default['tarsnap']['retention']   = "1d 7d 30d 3650d"

case node['platform']
when 'freebsd'
  default['tarsnap']['install_method']    = "ports"
  default['tarsnap']['conf_dir']          = "/usr/local/etc"
  default['tarsnap']['private_key']       = "/usr/local/etc/tarsnap.key"

  default['tarsnapper']['packages']       = []
else
  default['tarsnap']['install_method']    = "sources"
  default['tarsnap']['conf_dir']          = "/etc"
  default['tarsnap']['private_key']       = "/etc/tarsnap.key"

  default['tarsnapper']['packages']       = ['libyaml-dev']
end
