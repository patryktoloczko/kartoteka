class Lekarz < ActiveRecord::Base
  validates :imie, length: { minimum: 1,maximum: 25 }
  validates :nazwisko, length: { minimum: 1,maximum: 25}
  validates :specjalizacja, length: { minimum: 1,maximum: 50 }

  validates :nrTelefonu,
                     :presence => {:message => 'Podałeś zakrótki lub zakrótki numer!'},
                     :numericality => true,
                     :length => { :minimum => 9, :maximum => 15 }
  
  
  validates_format_of :email, with: /@/
  validates_confirmation_of :haslo
  validates_length_of :haslo,minimum:5 
  
  
 has_many :wizyts
 has_many :kartoteks

  
end
