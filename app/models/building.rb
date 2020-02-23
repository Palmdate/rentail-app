class Building < ApplicationRecord
  has_many :floors
  has_many :rooms
  validates :image, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :build_year, presence: true
  validates :equipments, presence: true
end
