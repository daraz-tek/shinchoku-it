# Be sure to restart your server when you modify this file.

begin
  require 'action_dispatch/middleware/session/dalli_store'
rescue LoadError
end

default_options = {
  key: '_shinchoku-it_session',
  expire_after: 2.weeks,
}

if defined? ActionDispatch::Session::DalliStore
  if ENV["MEMCACHEDCLOUD_SERVERS"]
    Rails.application.config.session_store :dalli_store, ENV["MEMCACHEDCLOUD_SERVERS"].split(','),
      default_options.merge(username: ENV["MEMCACHEDCLOUD_USERNAME"], password: ENV["MEMCACHEDCLOUD_PASSWORD"])
  else
    Rails.application.config.session_store :dalli_store, default_options
  end
else
  Rails.application.config.session_store :cookie_store, default_options
end
