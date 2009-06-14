# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fedie_session',
  :secret      => '89415adb73d5c7df4b98f14aa15601ff41baf7b3135c8f0180218dfe4d85c1f5c8a8b7c9a2df6b6a63aaec2f39174a4851efcc7a08aa64e8cc8650422e088382'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
