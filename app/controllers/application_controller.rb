class ApplicationController < ActionController::Base


def current_user
  @current_user ||= Benutzer.find(session[:benutzer_id]) if session[:benutzer_id]
end
helper_method :current_user

def authorize
  redirect_to root_path, alert: "Not authorized" if current_user.nil?
end
helper_method :authorize

def forbidden
  redirect_to wissensgebiete_index_path, alert: "Forbidden"
end
helper_method :forbidden

end
