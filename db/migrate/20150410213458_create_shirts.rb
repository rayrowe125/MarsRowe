class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :name
      t.integer :height
      t.integer :collar
      t.integer :weight
      t.integer :chest
      t.integer :arm

      t.timestamps null: false
    end
  end
end
