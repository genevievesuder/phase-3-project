class User < ActiveRecord::Base
    has_many :reservations
    has_many :rooms, through: :reservations
    enum role: [:guest, :admin]
    has_secure_password
    # password_confirmation authenticate - add later

    validates :email, presence: true, uniqueness: true 
    validates :first_name, presence: true
    validates :password, length: {in: 6..25}

end