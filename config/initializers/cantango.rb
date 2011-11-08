CanTango.config do |config|
  config.debug!

  config.engine(:permission).set :off
  config.engine(:permit).set :on
  config.ability.mode = :no_cache
  # config.enable_helpers :rest

  # config.guest.user lambda { Guest.new }
end

module CanTango::Api
  def self.current_admin
    @current_admin ||= AdminUser.first
  end
end
