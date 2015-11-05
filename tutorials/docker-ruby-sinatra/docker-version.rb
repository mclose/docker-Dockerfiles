#!/usr/bin/ruby

require 'sinatra'
require 'docker'

set :bind, '0.0.0.0'

get '/version' do
    output = ''
    version = Docker.version
    version.each do |key, value|
        output += "#{key}:#{value}" + "<br>"
    end
    "#{output}"
end
