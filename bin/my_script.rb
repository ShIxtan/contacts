require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
# scheme: 'http',
# host: 'localhost',
# port: 3000,
# path: '/contacts',
# ).to_s
#
# puts RestClient.get(url)
#
# url = Addressable::URI.new(
# scheme: 'http',
# host: 'localhost',
# port: 3000,
# path: '/contacts/2',
# ).to_s
#
# puts RestClient.get(url)
#

def create_comments
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/2/comments.json'
  ).to_s

  puts RestClient.post(
  url,
  { comment: { content: "this is a comment on contact share 2" }}
  )
end



create_comments
#create_users
