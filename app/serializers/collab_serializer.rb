class CollabSerializer < ActiveModel::Serializer
  has_many :users
  attributes :id, :name, :drummers, :guitars, :basses, :beatboxers, :keyboards, :rappers, :singers, :producers, :users, :image, :updated_at
end
