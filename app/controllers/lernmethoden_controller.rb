class LernmethodenController < ApplicationController
  def show # is inhalt overview of a "lernmethode"
    @wissensgebiet=Wissensgebiet.find(params[:wissensgebiete_id])
    @fachmodul =@wissensgebiet.fachmoduls.find(params[:fachmodul_id])
    @lernmethode =@fachmodul.lernmethoden.find(params[:id])
    @inhalts=@lernmethode.inhalts.all
  end
end
