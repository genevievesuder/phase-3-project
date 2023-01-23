class Client < ActiveRecord::Base
    belongs_to :hotel
    has_many :reservations
    has_many :rooms, through: :reservations



    def new_reservation(date, length_of_stay)
        Reservation.create(date: date, length_of_stay: length_of_stay, client: self)
    end

end