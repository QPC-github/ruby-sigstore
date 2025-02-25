# Copyright 2021 The Sigstore Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'rubygems/command_manager'
require 'rubygems/sigstore'
require 'rubygems/commands/signatures_command'
require 'rubygems/commands/build_command_extend'
require 'rubygems/commands/install_command_extend'

Gem::CommandManager.instance.register_command :signatures

[:signatures, :build, :install].each do |cmd_name|
  cmd = Gem::CommandManager.instance[cmd_name]
end
