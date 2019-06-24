class FachmodulsController < ApplicationController
# edit fehler - weiterleitung, update und delete fehlt
  def new
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =Fachmodul.new
  end

  def edit
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])

    @fachmodul = @wissensgebiet.fachmoduls.find(params[:id])
  end

  def create
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul= @wissensgebiet.fachmoduls.new(fachmodul_params)
      if @fachmodul.save
        flash[:success] = "Fachmodul erfolgreich erstellt"
        redirect_to wissensgebiete_path(@wissensgebiet)
      else
        render 'new'
      end
  end

=begin
  def update
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul = @wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    if @fachmodul.update(fachmodul_params)
      flash[:success] = "Fachmodul erfolgreich bearbeitet"
      redirect_to wissensgebiete_path(@wissensgebiet)
    else
      render 'edit'
    end
  end
=end



  private
    def fachmodul_params
      params.require(:fachmodul).permit(:titel, :beschreibung, :benutzer_id)
    end
end
