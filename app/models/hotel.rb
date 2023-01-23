class Hotel < ActiveRecord::Base
    has_many :reservations
    has_many :rooms
    has_many :clients, through: :reservations


    

end