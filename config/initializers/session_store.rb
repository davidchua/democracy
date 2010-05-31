# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_democracy_session',
  :secret      => '2747a705174cb44a7b78655b93ede1c7ebf3c103f7bacd026d02fe11ab6602a219f0552dd957302e702b022346bb25bcf857078151ae317a498804e64d16d87f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
