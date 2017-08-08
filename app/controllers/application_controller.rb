class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  include CurrentUserConcern
  include DeviseWhitelistConcern
  include SetSourceConcern
  include DefaultPageConcern
end