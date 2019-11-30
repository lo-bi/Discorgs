#Doc: https://github.com/buntine/discogs
require "discogs"

user_token = TOKEN
user = "yellowkam"

auth_wrapper = Discogs::Wrapper.new("My awesome web app", user_token: user_token)

record = []

auth_wrapper.get_user_wants(user,:per_page => 200).wants.each do |rec|
  release = auth_wrapper.get_release(rec.id)
  puts "#{rec.id},#{release.title},#{release.num_for_sale}"
  record << "#{rec.id},#{release.title},#{release.num_for_sale}"
  sleep 61
end

puts "----------------- FULL CSV BELLOW ----------------"
puts record

