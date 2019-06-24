class InhaltsController < ApplicationController
  def new
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =Lernmethoden.find(params[:lernmethoden_id])
    @inhalt=Inhalt.new
  end

  def create
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul= @wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =Lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@fachmodul.inhalts.new(inhalt_params)

      if @inhalt.save
        flash[:success] = "Inhalt erfolgreich erstellt"
        redirect_to wissensgebiete_fachmodul_lernmethoden_path(@wissensgebiet,@fachmodul,@lernmethode)
      else
        render 'new'
      end
  end
  #create, update and destroy

  private
    def inhalt_params
      params.require(:inhalt).permit(:titel, :inhalt)
    end
end
