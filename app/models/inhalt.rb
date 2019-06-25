class Inhalt < ApplicationRecord
  belongs_to :lernmethoden
  validates :titel, presence: true, uniqueness: true
  validates :inhalt, presence: true

end
