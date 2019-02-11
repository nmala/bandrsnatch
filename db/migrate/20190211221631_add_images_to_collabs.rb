class AddImagesToCollabs < ActiveRecord::Migration[5.2]
  def change
    add_column :collabs, :image, :string
  end
end
