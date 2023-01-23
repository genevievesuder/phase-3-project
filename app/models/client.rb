class Client < ActiveRecord::Base
    has_many :reservations
    belongs_to :hotel
end