# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
ComboBreakerApi::Application.config.secret_token = '01247c5ed91ef292335b1bc88cf1150c0b951e3ff38fa39b7c1e9f75f7f8a9ffda72e4fb5c889b11179f8d42506dd3f5d5bc7a69f23b412fd1740c61c1d7a3aa'
