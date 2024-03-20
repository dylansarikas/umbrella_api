require "http"
require "json"

puts "Where would you like to check the weather today?"
location = gets.chomp

key = ENV.fetch("GMAPS_KEY")

url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{location}&key=#{key}"

puts "Here at my Garage"

output = HTTP.get(url)

puts output.to_s
