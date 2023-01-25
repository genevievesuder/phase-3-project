class Hotel < ActiveRecord::Base
    has_many :rooms
    has_many :amenities
    has_many :reservations, through: :rooms
    has_many :users, through: :reservations

end