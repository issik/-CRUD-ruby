require 'httparty'
require 'json'
require 'pry'

# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"

# probably going to turn into an all_users method
users = HTTParty.get("#{BASE_URL}/users").parsed_response

users.each do |user|
  puts user['id']
  puts user['first_name']
  puts user['last_name']
  puts user['phone_number']
end

# implement a menu that is in a loop until the user quits
# 1. all users
# 2. single user
# 3. add user
# 4. update user
# 5. delete user
# 6. quit