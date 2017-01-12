class Kartotek < ActiveRecord::Base
  belongs_to :pacjent
  belongs_to :lekarz
  belongs_to :wizyt
  belongs_to :diagnoza
  
  
  
end
