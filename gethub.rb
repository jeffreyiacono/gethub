require 'net/http'
require 'uri'
require 'io/console'

uri = URI.parse('https://api.github.com/user')

puts "Enter in a github username:"
gh_username = gets.chomp
puts "Enter in the github user password (hidden):"
gh_password = STDIN.noecho(&:gets).chomp

http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

req = Net::HTTP::Get.new(uri.request_uri)
req.basic_auth(gh_username, gh_password)

r = http.request(req)

puts "\n#{r.body}"
