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

def favorite
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/2/favorite'
  ).to_s

  puts RestClient.patch(
  url,{}
  )
end



favorite
#create_users
