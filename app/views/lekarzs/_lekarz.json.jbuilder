json.extract! lekarz, :id, :imie, :nazwisko, :specjalizacja, :nrTelefonu, :email, :haslo, :created_at, :updated_at
json.url lekarz_url(lekarz, format: :json)