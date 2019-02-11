class CreateCollabs < ActiveRecord::Migration[5.2]
  def change
    create_table :collabs do |t|
      t.string :name

      t.timestamps
    end
  end
end
