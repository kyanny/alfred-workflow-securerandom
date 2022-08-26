#!/usr/bin/env ruby

require 'securerandom'
require 'json'

items = %w[alphanumeric base64 hex random_number urlsafe_base64].map{ |method|
  data = SecureRandom.send(method)
  {
    title: method,
    subtitle: data,
    arg: data
  }
}
output = { items: items }
puts output.to_json
