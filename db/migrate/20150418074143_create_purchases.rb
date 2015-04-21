class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user, index: true
      t.references :shirt, index: true

      t.timestamps null: false
    end
    add_foreign_key :purchases, :users
    add_foreign_key :purchases, :shirts
  end
end
