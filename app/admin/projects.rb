ActiveAdmin.register Project do
  controller.skip_load_resource :only => :index

  controller.authorize_resource

  menu :if => proc{ admin_can?(:manage, Project) }

  # menu :if => lambda {|tabs_renderer| controller.current_user_ability(:admin).can? :manage, config.resource }

  index do
    Project.column_names do |name|
      column name.to_sym # if admin_can?(:read, Post)
      column "Actions" do |post|
        link_to "View", admin_post_path(post) if admin_can?(:access, Project)
        link_to "Edit", admin_post_path([:edit, post]) if admin_can?(:edit, Project)
      end
    end
  end
end
