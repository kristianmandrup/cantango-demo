ActiveAdmin.register AdminUser do
  controller.authorize_resource

  if controller.current_user_ability(:admin).can?( :change_password, resource )
    action_item :only => [:show, :edit] do
      link_to "Change Password", change_password_app_admin_user_path( resource )
    end
  end
end
