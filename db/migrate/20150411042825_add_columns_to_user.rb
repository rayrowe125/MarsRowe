class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :height_ft, :integer
    add_column :users, :height_in, :integer
    add_column :users, :weight, :integer
    add_column :users, :collar, :integer
    add_column :users, :chest, :integer
    add_column :users, :arm, :integer
  end
end
