class AddLernmethoden < ActiveRecord::Migration[5.2]

  def up
    Lernmethoden.create(name:"Skript");
    Lernmethoden.create(name:"Übungsaufgaben");
    Lernmethoden.create(name:"Anwendungsbeispiele");
    Lernmethoden.create(name:"Videos");
    Lernmethoden.create(name:"Codelab");



  end
  def down
  end
end
