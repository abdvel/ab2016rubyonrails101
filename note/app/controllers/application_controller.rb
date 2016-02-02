class ApplicationController < ActionController::Base
  before_filter :set_user_time_zone
  respond_to :html, :json


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception  
  # rescue_from Exception, :with => :server_error
  def server_error(exception)
    # ExceptionNotifier::Notifier.exception_notification(request.env, exception).deliver
    respond_to do |format|
      format.html { render template: 'errors/internal_server_error', layout: 'layouts/application', status: 500 }
      format.all  { render nothing: true, status: 500}
    end
  end

  rescue_from ActiveRecord::RecordNotFound, :with => :page_not_found
  rescue_from ActionController::RoutingError, :with => :page_not_found
  def page_not_found
    respond_to do |format|
      format.html { render template: 'errors/not_found', layout: 'layouts/application', status: 404 }
      format.all  { render nothing: true, status: 404 }
    end
  end
protected
  def set_user_time_zone
    Time.zone = current_user.time_zone if user_signed_in? && current_user.time_zone.present?
  end

  def devise_parameter_sanitizer
    if resource_class == User
      User::ParameterSanitizer.new(User, :user, params)
    else
      super # Use the default one
    end
  end

end
