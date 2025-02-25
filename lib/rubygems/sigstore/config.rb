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

require 'config'

class Gem::Sigstore::Config
  class << self
    def read
      ::Config.load_and_set_settings(settings_file)
    end

    private

    def setup
      ::Config.setup do |config|
        config.use_env = true
        config.env_prefix = 'sigstore'
        config.env_separator = '_'
      end
    end

    def settings_file
      ::Config.setting_files(
        File.expand_path('../../../../', __FILE__),
        'development' # TODO: Get this from gemspec
      )
    end
  end
end
