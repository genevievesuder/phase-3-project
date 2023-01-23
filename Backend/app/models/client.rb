class Client < ActiveRecord::Base
    belongs_to :hotel
    has_many :reservations
    has_many :rooms, through: :reservations
end