class BenutzerController < ApplicationController

  def show

    @benutzer=Benutzer.find(params[:benutzer])

  end

end
