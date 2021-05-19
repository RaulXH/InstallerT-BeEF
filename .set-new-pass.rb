#!/usr/bin/env ruby

require 'yaml'

config_file = ARGV[0]
password = ARGV[1]

File.open(config_file, 'a+')

yaml_file = YAML.load_file(config_file)

yaml_file['beef']['credentials']['passwd'] = password

File.open(config_file, 'w') { |f| YAML.dump(yaml_file, f) }
