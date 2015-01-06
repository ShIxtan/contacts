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

def create_shares
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contact_shares.json'
  ).to_s

  puts RestClient.post(
  url,
  { contact_share: {user_id: 1, contact_id: 2}}
  )
end

def update_contacts
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/2.json'
  ).to_s

  puts RestClient.patch(
  url,
  { contact: { name: "Curio" } }
  )
end

create_shares
#create_users
