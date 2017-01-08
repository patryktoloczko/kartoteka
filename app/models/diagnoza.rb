class Diagnoza < ActiveRecord::Base
  validates :typ, length: { maximum: 50 }
  validates :opis, length: { maximum: 250 }
  
  has_many :kartoteks  
end
