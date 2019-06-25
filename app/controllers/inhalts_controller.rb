class InhaltsController < ApplicationController
  def new
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=Inhalt.new
  end

  def show
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@lernmethode.inhalts.find(params[:id])
  end

  def edit
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@lernmethode.inhalts.find(params[:id])
  end

  def create
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul= @wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@lernmethode.inhalts.new(inhalt_params)
    #initalize "gemeldet=false"?
    @inhalt.gemeldet=false
      if @inhalt.save
        flash[:success] = "Inhalt erfolgreich erstellt"
        redirect_to wissensgebiete_fachmodul_lernmethoden_path(@wissensgebiet,@fachmodul,@lernmethode)
      else
        render 'new'
      end
  end
  def update
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul= @wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@lernmethode.inhalts.find(params[:id])

      if @inhalt.update(inhalt_params)
        flash[:success] = "Inhalt erfolgreich bearbeitet"
        redirect_to wissensgebiete_fachmodul_lernmethoden_path(@wissensgebiet,@fachmodul,@lernmethode)
      else
        render 'edit'
      end
  end

  def destroy
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul= @wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:lernmethoden_id])
    @inhalt=@lernmethode.inhalts.find(params[:id])

      if @inhalt.destroy
        flash[:success] = "Inhalt erfolgreich gelöscht"
      end
      redirect_to wissensgebiete_fachmodul_lernmethoden_path(@wissensgebiet,@fachmodul,@lernmethode)

  end

  private
    def inhalt_params
      params.require(:inhalt).permit(:titel, :inhalt)
    end
end
