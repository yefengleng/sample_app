# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.jion(' .secret')
  if File.exist?(tolen_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
SampleApp::Application.config.secret_key_base = '3745cb2925c397eca0bd669385ebe5e1c2c234318adbf5545f95ce7eded0890af6b2b7992d5be3f251edc15827c495a71273cad2a51d91c38f913e8d3d665268'

