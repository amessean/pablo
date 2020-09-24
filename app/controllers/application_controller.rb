class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  after_action :verify_authorized, except: :index, unless: :devise_controller?
end
