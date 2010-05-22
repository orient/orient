# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lezipuback_session',
  :secret      => 'e7cdc8cb9d18300773b4b5af532798433ba60ad92452b3cc1f865ef3d051d2daa2bb0646cfc5f08d8076be52271303cf37a27e5ec0bde0d63750fbc67af07cea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
