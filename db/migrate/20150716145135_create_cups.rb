class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      
      t.string :dbstring
      t.integer :dbint
      
      t.timestamps null: false
    end
  end
end