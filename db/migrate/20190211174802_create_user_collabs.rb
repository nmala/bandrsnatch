class CreateUserCollabs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_collabs do |t|
      t.references :user, foreign_key: true
      t.references :collab, foreign_key: true

      t.timestamps
    end
  end
end
