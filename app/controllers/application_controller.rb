class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # Disable the web-based CSRF protection (sem isto nao da para fazer um post pelo POSTMAN)
  #  protect_from_forgery with: :null_session
   #tirar sempre isto antes de fazer push

   private

  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end
end
