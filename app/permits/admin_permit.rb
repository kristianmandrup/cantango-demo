class AdminPermit < CanTango::UserPermit
  def initialize ability
    super
  end

  protected

  module Cached
    def permit_rules
      # insert your can, cannot and any other rule statements here
      can :manage, :all
      # use any licenses here
    end
  end
end
