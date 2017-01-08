class CreateDiagnozas < ActiveRecord::Migration
  def change
    create_table :diagnozas do |t|
      t.string :typ
      t.string :opis

      t.timestamps
    end
  end
end
