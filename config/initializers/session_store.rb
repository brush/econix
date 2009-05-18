# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_econix_session',
  :secret      => 'bfe81913ab018a9a801f10b176cf300a94efecbd5771283e49c39202f6e8b13585c36b9c4d1008216bc9b95c590c94eeb2e7b9085b37476bf5fe43aac272bfb2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
