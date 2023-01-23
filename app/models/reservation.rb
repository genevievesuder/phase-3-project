class Reservation <ActiveRecord::Base
   belongs_to :client
   belongs_to :hotel
   belongs_to :room
end