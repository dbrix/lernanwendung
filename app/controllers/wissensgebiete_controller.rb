class WissensgebieteController < ApplicationController

  def index
    @wissensgebiete =Wissensgebiet.all
  end

  def show
    @wissensgebiet=Wissensgebiet.find(params[:id])
    @fachmoduls =@wissensgebiet.fachmoduls.all
  end

  def new
    @wissensgebiet = Wissensgebiet.new
  end

  def edit
    @wissensgebiet = Wissensgebiet.find(params[:id])
  end

  def create
    @wissensgebiet = Wissensgebiet.new(wissensgebiet_params)

      if @wissensgebiet.save
        flash[:success] = "Wissensgebiet erfolgreich erstellt"
        redirect_to wissensgebiete_index_path
      else
        render 'new'
      end
  end


  def update
    @wissensgebiet = Wissensgebiet.find(params[:id])

    if @wissensgebiet.update(wissensgebiet_params)
      flash[:success] = "Wissensgebiet erfolgreich bearbeitet"
      redirect_to wissensgebiete_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @wissensgebiet = Wissensgebiet.find(params[:id])
    if @wissensgebiet.destroy
      flash[:success]="Wissensgebiet erfolgreich gelöscht"
    end
    redirect_to wissensgebiete_index_path
  end

  private
    def wissensgebiet_params
      params.require(:wissensgebiet).permit(:titel, :beschreibung)
    end

end
