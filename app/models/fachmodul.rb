class Fachmodul < ApplicationRecord
  belongs_to :benutzer
  belongs_to :wissensgebiet
  has_many :inhalts
  validates :titel, presence: true, uniqueness: true
  validates :beschreibung, presence: true
  validates :benutzer, presence: true
  def destroy
      raise "Fachmoul kann nicht gelöscht werden, da es Inhalte enthält" unless inhalts.count == 0
      # ... ok, go ahead and destroy
      super
    end

end
