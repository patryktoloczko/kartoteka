class Pacjent < ActiveRecord::Base
  validates :imie, length: { maximum: 25 }
  validates :nazwisko, length: { maximum: 25 }
  validates :pesel, length: { maximum: 11 }

  validates :nrtelefonu,:presence => {:message => 'Podałeś zakrótki lub zakrótki numer!'},
                     :numericality => true,
                     :length => { :minimum => 9, :maximum => 15 }
  
  
  validates_format_of :email, with: /@/
 
  validates_length_of :haslo, :minimum => 5, :allow_blank => true
  validates_confirmation_of :haslo
  
  
  has_many :wizyts
  has_many :kartoteks
end
