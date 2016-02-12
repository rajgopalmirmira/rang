class CreatePhotographers < ActiveRecord::Migration
  def change
    create_table :photographers do |t|
      t.string :name
      t.string :fburl
      t.string :weburl
      t.text :about

      t.timestamps null: false
    end
  end
end
