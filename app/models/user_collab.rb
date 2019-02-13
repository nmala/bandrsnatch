class UserCollab < ApplicationRecord
  belongs_to :user
  belongs_to :collab

  validates :user_id, uniqueness: {scope: :collab_id}

end
