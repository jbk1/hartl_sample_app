# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

SampleApp::Application.config.secret_key_base = 'f7d1d0cf1eba05cabb840d9af2b226c65a242e00720d994c0441ae8505e059a478cc347bb944dc97ae7b1d27a5d0fe0ea8836c364729b874708a32be94e91d62'

# require 'securerandom'

# def secure_token 
# 	token_file = Rails.root.join('.secret')
# 	if File.exist?(token_file)
# 		# Use the existing token.
# 		File.read(token_file).chomp
# 	else
# 		#generate a new token and store it in token_file.
# 		token = SecureRandom.hex(64)
# 		File.write(token_file, token)
# 		token
# 	end
# end

# SampleApp::Application.config.secret_key_base = secure_token
