class FachmodulsController < ApplicationController
  def new
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =Fachmodul.new
  end

  def show # is index for "Lernmethoden"
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:id])
    @lernmethoden= Lernmethoden.all
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

  def update
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul = @wissensgebiet.fachmoduls.find(params[:id])
    if @fachmodul.update(fachmodul_params)
      flash[:success] = "Fachmodul erfolgreich bearbeitet"
      redirect_to wissensgebiete_path(@wissensgebiet)
    else
      render 'edit'
    end
  end

def destroy
  @wissensgebiet = Wissensgebiet.find(params[:wissensgebiete_id])
  @fachmodul=@wissensgebiet.fachmoduls.find(params[:id])
  if @fachmodul.destroy
    flash[:success] = "Fachmodul erfolgreich gelöscht"
  end
  redirect_to wissensgebiete_path(@wissensgebiet)
end


  private
    def fachmodul_params
      params.require(:fachmodul).permit(:titel, :beschreibung, :benutzer_id)
    end
end
