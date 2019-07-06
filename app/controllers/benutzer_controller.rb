class BenutzerController < ApplicationController

  def show

    @benutzer=Benutzer.find(params[:benutzer])

  end



def new
  @benutzer = Benutzer.new
end

def create
  @benutzer = Benutzer.new(benutzer_params)
  @benutzer.name ="TestUser"
  @benutzer.tutor=false
  @benutzer.qualTut=false
  @benutzer.ansprechpartner=false
  @benutzer.admin=false

  if @benutzer.save
    session[:benutzer_id] = @benutzer.id
    redirect_to "/", notice: "Danke für's registrieren!"
  else
    render "new"
  end
end

private
  def benutzer_params
    params.require(:benutzer).permit(:mail, :password)
  end


end
