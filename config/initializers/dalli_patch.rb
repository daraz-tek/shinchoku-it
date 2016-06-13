
begin
  require 'dalli'
  require 'action_dispatch/middleware/session/dalli_store'
rescue LoadError
end

if defined? ActionDispatch::Session::DalliStore
  # TODO: After updating dalli version , check the following implementation
  raise "Patch intended for dalli 2.7.6, please confirm to (#{__FILE__})" unless Dalli::VERSION == '2.7.6'

  module DalliRails5Support
    extend ActiveSupport::Concern

    included do
      alias_method :find_session, :get_session
      alias_method :write_session, :set_session
    end
  end

  ActionDispatch::Session::DalliStore.include DalliRails5Support
end
