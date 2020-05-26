class User < ApplicationRecord
    has_many :reviews
    has_many :festivals, through: :reviews
    # has_secure_password
end
