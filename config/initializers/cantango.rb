CanTango.config do |config|
  config.debug!

  config.engine(:permission).set :on
  config.engine(:permit).set :on
  # config.enable_helpers :rest
end
