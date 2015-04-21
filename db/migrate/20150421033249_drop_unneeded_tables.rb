class DropUnneededTables < ActiveRecord::Migration
  def change
    drop_table :lessons, force: :cascade
    drop_table :courses, force: :cascade  
    drop_table :subscribes
    drop_table :completes
    drop_table :exercises
  end
end
