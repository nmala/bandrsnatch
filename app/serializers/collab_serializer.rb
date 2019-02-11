class CollabSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :name, :drummers, :guitars, :basses, :keyboards, :rappers, :singers, :producers, :users
end
