class Client < ActiveRecord::Base
    has_many :Reservations
    belongs_to :hotel
end