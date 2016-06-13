# Be sure to restart your server when you modify this file.

begin
  require 'action_dispatch/middleware/session/dalli_store'
rescue LoadError
end

session_store = defined?(ActionDispatch::Session::DalliStore) ? :dalli_store : :cookie_store
session_store_options = {
  key: '_shinchoku-it_session',
  expire_after: 2.weeks,
}

if ENV["MEMCACHEDCLOUD_SERVERS"]
  session_store_options.merge!({
      memcache_server: ENV["MEMCACHEDCLOUD_SERVERS"].split(','),
      username: ENV["MEMCACHEDCLOUD_USERNAME"],
      password: ENV["MEMCACHEDCLOUD_PASSWORD"],
    })
end

Rails.application.config.session_store session_store, session_store_options
