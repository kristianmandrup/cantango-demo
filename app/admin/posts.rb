ActiveAdmin.register Post do
  controller.skip_load_resource :only => :index

  controller.authorize_resource

  menu :if => proc{ admin_can?(:manage, Post) }

  # menu :if => lambda {|tabs_renderer| controller.current_user_ability(:admin_user).can? :manage, config.resource }
  #
  index do
    Post.column_names do |name|
      column name.to_sym # if admin_can?(:read, Post)
      column "Actions" do |post|
        link_to "View", admin_post_path(post) if admin_can?(:access, Post)
        link_to "Edit", admin_edit_post_path(post) if admin_can?(:edit, Post)
      end
    end
  end
end
