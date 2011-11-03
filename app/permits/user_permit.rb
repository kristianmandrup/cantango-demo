class UserPermit < CanTango::UserPermit
  def initialize ability
    super
  end

  protected

  def permit_rules
  end

  module Cached
    def permit_rules
      can :edit, Project
    end
  end

  module NonCached
  end
end
