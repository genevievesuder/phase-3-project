class Room < ActiveRecord::Base
    belongs_to :hotel
    has_many :reservations
    has_many :client, through: :reservations

end