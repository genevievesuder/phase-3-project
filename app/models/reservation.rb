class Reservation <ActiveRecord::Base
   belongs_to :user
   belongs_to :room

   validates :check_in, :check_out, presence: true
end