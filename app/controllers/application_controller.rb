class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :admin?

  private

  def admin?
    session[:admin].present? && session[:admin]
  end

  def authenticate_with_basic
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      session[:admin] = (username == 'admin' && password == 'secret')
    end
  end

end
