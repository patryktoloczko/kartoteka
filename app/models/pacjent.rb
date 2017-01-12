class Pacjent < ActiveRecord::Base
  validates :imie, length: { maximum: 25 }
  validates :nazwisko, length: { maximum: 25 }
  validates :pesel, length: { maximum: 11 }

  validates :nrtelefonu,:presence => {:message => 'Podałeś zakrótki lub zakrótki numer!'},
                     :numericality => true,
                     :length => { :minimum => 9, :maximum => 15 }
  
  
  validates_format_of :email, with: /@/
<<<<<<< HEAD
 
  validates_length_of :haslo, :minimum => 5, :allow_blank => true
  validates_confirmation_of :haslo
  
=======
  validates_confirmation_of :haslo
  validates_length_of :haslo,minimum:5
>>>>>>> ad3e4b4ecae3cf5b94d6a8b785f9aca4703b5a16
  
  has_many :wizyts
  has_many :kartoteks
end
