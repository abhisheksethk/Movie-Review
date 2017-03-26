class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :twiiter_link
      t.integer :age

      t.timestamps null: false
    end
  end
end
