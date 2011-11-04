ActiveAdmin.register Post do
  controller.skip_load_resource :only => :index

  controller.authorize_resource

  menu :if => lambda {|tabs_renderer| controller.current_user_ability(:admin).can? :manage, config.resource }
end
