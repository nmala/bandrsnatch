class AddSpecialtiesToCollab < ActiveRecord::Migration[5.2]
  def change
    add_column :collabs, :drummers, :integer
    add_column :collabs, :guitars, :integer
    add_column :collabs, :basses, :integer
    add_column :collabs, :keyboards, :integer
    add_column :collabs, :rappers, :integer
    add_column :collabs, :singers, :integer
    add_column :collabs, :beatboxers, :integer
    add_column :collabs, :producers, :integer
  end
end
