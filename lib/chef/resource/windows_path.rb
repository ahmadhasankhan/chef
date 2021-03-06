#
# Author:: Nimisha Sharad (<nimisha.sharad@msystechnologies.com>)
# Copyright:: Copyright 2008-2017, Chef Software Inc.
# License:: Apache License, Version 2.0
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

require "chef/resource"

class Chef
  class Resource
    class WindowsPath < Chef::Resource

      provides :windows_path, os: "windows"

      allowed_actions :add, :remove
      default_action :add

      def initialize(name, run_context = nil)
        super
        @resource_name = :windows_path
        @path = name
        @provider = Chef::Provider::WindowsPath
        @action = :add
      end

      property :path, String, name_property: true
    end
  end
end
