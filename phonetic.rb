#!/usr/bin/env ruby
require 'yaml'
require 'pathname'

hash = File.open(Pathname(__dir__)+'phonetic.yaml') {|yf| YAML::load(yf)}

string = ARGV[0].upcase.gsub(/[ \.]/,"").strip

string.each_char{|x|
  if hash.key?(x)
    print hash[x]
  else
    print x
  end
  print " "
}
