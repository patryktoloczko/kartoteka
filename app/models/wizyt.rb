class Wizyt < ActiveRecord::Base
  belongs_to :lekarz
  belongs_to :pacjent
  has_many :kartoteks
end
