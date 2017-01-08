class CreateWizyts < ActiveRecord::Migration
  def change
    create_table :wizyts do |t|
      t.datetime :data
      t.integer :lekarz_id
      t.integer :pacjent_id

      t.timestamps
    end
  end
end
