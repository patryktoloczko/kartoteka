class CreateKartoteks < ActiveRecord::Migration
  def change
    create_table :kartoteks do |t|
      t.integer :pacjent_id
      t.integer :lekarz_id
      t.integer :wizyt_id
      t.integer :diagnoza_id

      t.timestamps
    end
  end
end
