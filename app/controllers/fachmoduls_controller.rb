class FachmodulsController < ApplicationController
  after_action :createLernmethoden, only:[:create]

  def new
    @wissensgebiet =Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =Fachmodul.new
  end

  def show # is index for "Lernmethoden"
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:id])
    @lernmethoden= @fachmodul.lernmethoden.all
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

  private
    def createLernmethoden

      @fachmodul=Fachmodul.last

      puts @fachmodul.id
      puts @fachmodul

      @lernmethode1= @fachmodul.lernmethoden.new
      @lernmethode1.name="Skript"
      @lernmethode1.fachmodul_id=@fachmodul.id
      
      if @lernmethode1.save
        puts "true"
      else
        puts @lernmethode1.valid?
        puts @lernmethode1.errors.messages
        puts @lernmethode1.name
        puts @lernmethode1.fachmodul_id

      end

      @lernmethode2= @fachmodul.lernmethoden.new
      @lernmethode2.name="Übungsaufgaben"
      @lernmethode2.fachmodul_id=@fachmodul.id
      @lernmethode2.save
      @lernmethode3= @fachmodul.lernmethoden.new
      @lernmethode3.name="Codelab"
      @lernmethode3.fachmodul_id=@fachmodul.id
      @lernmethode3.save
      @lernmethode4= @fachmodul.lernmethoden.new
      @lernmethode4.name="Videos"
      @lernmethode4.fachmodul_id=@fachmodul.id
      @lernmethode4.save

      puts @lernmethode1.name
      puts @lernmethode1.fachmodul_id
    end
end
