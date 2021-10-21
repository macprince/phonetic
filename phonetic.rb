#!/usr/bin/env ruby
require 'yaml'
require 'pathname'

hash = File.open(Pathname(__dir__)+'phonetic.yaml') {|yf| YAML::load(yf)}

string = ARGV[0].upcase.gsub(/[ \.]/,"").strip
output = Array.new()
string.each_char{|x|
  if hash.key?(x)
    output << hash[x]
  else
    output << x
  end
}
print output.join("\n")