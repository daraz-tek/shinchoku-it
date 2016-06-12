# Be sure to restart your server when you modify this file.

begin
  require 'action_dispatch/middleware/session/dalli_store'
rescue LoadError
end

if defined? ActionDispatch::Session::DalliStore
  Rails.application.config.session_store :dalli_store, key: '_shinchoku-it_session'
else
  Rails.application.config.session_store :cookie_store, key: '_shinchoku-it_session'
end
