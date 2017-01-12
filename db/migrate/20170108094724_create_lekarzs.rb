class CreateLekarzs < ActiveRecord::Migration
  def change
    create_table :lekarzs do |t|
      t.string :imie
      t.string :nazwisko
      t.string :specjalizacja
      t.string :nrTelefonu
      t.string :email
      t.string :haslo

      t.timestamps
    end
  end
end
