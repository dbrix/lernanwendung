class AddAdmin < ActiveRecord::Migration[5.2]
  def up
    Benutzer.create(mail:"admin@admin.de", name:"admin",passwort:"abc123",tutor:false, qualTut:false,ansprechpartner:true, admin:true);
  end
  def down
  end
end
