class User < ActiveRecord::Base
    has_many :reservations
    has_many :rooms, through: :reservations

    enum role: [:guest, :admin]
    

end