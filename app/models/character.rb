class Character < ApplicationRecord
  has_many :stats
  validates :name, presence: true,
            length: { minimum: 2 }
  #validates :kurzbeschreibung, presence: true,
   #         length: {minimum: 3}
end
