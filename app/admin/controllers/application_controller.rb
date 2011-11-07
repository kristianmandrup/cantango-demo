class Admin::ApplicationController < ActionController::Base
  extend CanTango::Api::UserAccount::Ability
end


