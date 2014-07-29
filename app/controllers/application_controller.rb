class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
  
  # force user redirect to login if not logged in
  # before_action :authenticate_user!
  # Commented cause we need to show Ideas to Public
end
