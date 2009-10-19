# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_my-sample_session',
  :secret      => '9aa401dcf712581af73996582436eede6e4d3ab44e89e62fc5d13336cee984df6a0b05e9579795476a65e6627c8d4b262b221a7d0f1d95f9ac60f7390ee11485'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
