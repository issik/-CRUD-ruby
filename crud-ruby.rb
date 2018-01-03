require 'httparty'
require 'json'
require 'pry'

# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"
response = HTTparty.get(BASE_URL)
puts response.parsed_response

class all_users
    
      BASE_URL 'json-server.devpointlabs.com'
def initialize()
    @options = { query:{ site service, page: page }}
end
# probably going to turn into an all_users method

def questions
    self.class.get("/2.2/Users", @options)
end
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