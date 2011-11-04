class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  end

  # used by CanCan for authorize! resource
  def current_ability
    @current_ability ||= current_user_ability :admin_user
  end

  def current_user
    current_admin_user
  end

  before_filter :set_timezone
  def set_timezone
    Time.zone = current_user.time_zone if current_user and !current_user.time_zone.blank?
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
