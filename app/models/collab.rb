class Collab < ApplicationRecord
  has_many :user_collabs
  has_many :users, through: :user_collabs
end
