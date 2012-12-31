class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_domain if !Rails.env.development?

  APP_DOMAIN = 'insource.it'

  def ensure_domain
    if request.env['HTTP_HOST'] != APP_DOMAIN
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
  
end
