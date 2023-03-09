class Bookmar < ApplicationRecord
  belongs_to :movi
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movi_id, uniqueness: { scope: :list_id, message: "is already in the list"}
end
