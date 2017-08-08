class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:change_language], unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  include CurrentUserConcern
  include DeviseWhitelistConcern
  include SetSourceConcern
  include DefaultPageConcern
end