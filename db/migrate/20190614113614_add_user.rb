class AddUser < ActiveRecord::Migration[5.2]
  def up
    Benutzer.create(mail:"user@user.de", name:"user",passwort:"0123",tutor:false, qualTut:false,ansprechpartner:false, admin:false);
  end
  def down
  end
end
