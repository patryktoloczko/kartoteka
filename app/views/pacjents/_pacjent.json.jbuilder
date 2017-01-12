json.extract! pacjent, :id, :imie, :nazwisko, :pesel, :nrtelefonu, :email, :haslo, :created_at, :updated_at
json.url pacjent_url(pacjent, format: :json)