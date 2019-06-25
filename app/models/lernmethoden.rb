class Lernmethoden < ApplicationRecord
    has_many :inhalts
    belongs_to :fachmoduls,optional:true
end
