require 'docker'


output = ''
version = Docker.version
version.each do |key, value|
    output += "#{key}:#{value}" + "\n"
end
puts output
