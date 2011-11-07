ActiveAdmin.register AdminUser do
  controller.authorize_resource

  menu :if => proc{ admin_can?(:manage, AdminUser) }

  if CanTango::Api.current_user_ability(:admin).can?( :change_password, AdminUser )
    action_item :only => [:show, :edit] do
      link_to "Change Password", change_password_app_admin_user_path( resource )
    end
  end
end
