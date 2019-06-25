class Fachmodul < ApplicationRecord
  belongs_to :benutzer
  belongs_to :wissensgebiet
  has_many :lernmethoden, dependent: :destroy
  validates :titel, presence: true, uniqueness: true
  validates :beschreibung, presence: true
  validates :benutzer, presence: true


=begin
delete when inhalts.count = 0
  def destroy
        raise "Fachmodul kann nicht gelöscht werden, da es Inhalte enthält" unless lernmethoden.inhalts.count == 0
        # ... ok, go ahead and destroy
        super
      end
=end

end
