class Room < ActiveRecord::Base
    belongs_to :hotel
    belongs_to :client
    belongs_to :reservation
end