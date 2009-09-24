# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_weedayout_session',
  :secret      => 'd56865350799ac5cccdd17f8d0f9d55c97a6761a8164182a959eab8ff0b9aae295ccaee249a4f0d2306aadcb3ba7124551aaf4111641edc4c8669f6e443dd1f3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
