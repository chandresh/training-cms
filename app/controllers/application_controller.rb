class ApplicationController < ActionController::Base
  protect_from_forgery


  private

  def authenticate_with_basic
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'admin' && password == 'secret'
    end
  end

end
