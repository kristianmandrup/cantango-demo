CanTango.config do |config|
  config.debug!

  config.engine(:permission).set :off
  config.engine(:permit).set :on
  # config.enable_helpers :rest

  # config.guest.user lambda { Guest.new }
end
