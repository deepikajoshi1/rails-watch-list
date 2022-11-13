class Movi < ApplicationRecord
  has_many :bookmars
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
