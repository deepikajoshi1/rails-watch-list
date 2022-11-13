class List < ApplicationRecord
  has_many :bookmars, dependent: :destroy
  has_many :movis, through: :bookmars, dependent: :destroy


  validates :name, uniqueness: true, presence: true
end
