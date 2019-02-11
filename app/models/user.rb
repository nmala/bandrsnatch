class User < ApplicationRecord
  has_many :user_collabs
  has_many :collabs, through: :user_collabs
end
