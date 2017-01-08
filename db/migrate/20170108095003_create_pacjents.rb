class CreatePacjents < ActiveRecord::Migration
  def change
    create_table :pacjents do |t|
      t.string :imie
      t.string :nazwisko
      t.string :pesel
      t.string :nrtelefonu
      t.string :email
      t.string :haslo

      t.timestamps
    end
  end
end
