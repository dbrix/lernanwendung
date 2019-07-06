class SessionsController < ApplicationController



def new
end

def create
  user = Benutzer.find_by_mail(params[:mail])
  if user && user.authenticate(params[:passwort])
    session[:benutzer_id] = user.id
    puts(user.id)
    puts(user.name)
    redirect_to wissensgebiete_index_path, notice: "Sie wurden erfolgreich eingeloggt!"
  else
    flash.now.alert = "Kombination aus E-Mail und Passwort ist fehlerhaft!"
    render "new" #fix this link after wrong password login
  end
end

def destroy
  session[:benutzer_id] = nil
  redirect_to root_url, notice: "Sie wurden erfolgreich ausgeloggt!" #fix this link after logout
end


end
