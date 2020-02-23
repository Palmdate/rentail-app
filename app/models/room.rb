class Room < ApplicationRecord
  serialize :images, Array
  belongs_to :building
  belongs_to :floor
  validates :rentail_fee, presence: true
  validates :manager_fee, presence: true
  validates :size, presence: true
  validates :images, presence: true
end
