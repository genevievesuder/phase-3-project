class User < ActiveRecord::Base
    has_many :reservations
    has_many :rooms, through: :reservations
    enum role: [:guest, :admin]
    has_secure_password
    # password_confirmation authenticate - add later

    validates :email, presence: true, uniqueness: true 
    validates :username, presence: true, length: {in: 4..25}
    validates :password, length: {in: 6..25}

end