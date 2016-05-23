class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.string :photoid
      t.string :photourl
      t.string :photographer

      t.timestamps null: false
    end
  end
end
