class AdminUserPermit < CanTango::UserPermit
  def initialize ability
    super
  end

  protected

  def permit_rules
    # insert your can, cannot and any other rule statements here
    can :manage, :all
    can :change_password, AdminUser
    # use any licenses here
  end
end
