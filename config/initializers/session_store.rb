# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_martinlubner_session',
  :secret      => 'f1ae11f8ed60bd5190832c90362b46467bcae0d870f1be3e76d03fcc1cc4f3a85e3c22daceb6c8e1b600e9af90133a2475a9ed4ebe81088d8b4803f580c72822'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
