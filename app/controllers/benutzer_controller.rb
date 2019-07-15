class BenutzerController < ApplicationController
  def index
    @benutzers =Benutzer.all.order('LOWER(name)')
  end
  def show


    if(params.has_key?(:benutzer))
      @benutzer=Benutzer.find(params[:benutzer])
    else
      @benutzer=Benutzer.find(params[:id])
    end
    @inhalts= Inhalt.where( benutzer_id: @benutzer.id)


  end



def new
  @benutzer = Benutzer.new
end
def edit
  @benutzer = Benutzer.find(params[:id])
end
def create
  @benutzer = Benutzer.new(benutzer_params)

  @benutzer.tutor=false
  @benutzer.qualTut=false
  @benutzer.ansprechpartner=false
  @benutzer.admin=false

  @benutzer.anzahl_inhalte=0
  @benutzer.aktiv=true

  if @benutzer.save
    flash[:success] = "Benutzer*in erfolgreich erstellt!"

    redirect_to benutzer_index_path

  else
    render "new"
  end
end

def update
  @benutzer = Benutzer.find(params[:id])


  if @benutzer.update(benutzer_params)
    flash[:success] = "Benutzer erfolgreich bearbeitet"
    redirect_to benutzer_index_path
  else
    render 'edit'
  end
end

def destroy
  @benutzer = Benutzer.find(params[:id])
  @benutzer.aktiv=false
  if @benutzer.update(params.require(:benutzer))
    flash[:success]="Benutzer erfolgreich deaktiviert"
  end
  redirect_to benutzer_index_path
end

private
  def benutzer_params
    params.require(:benutzer).permit(:name,:mail, :password)
  end


end
