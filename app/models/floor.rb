class Floor < ApplicationRecord
  belongs_to :building
  has_many :rooms
  validates :num_of_floor, presence: true
end
