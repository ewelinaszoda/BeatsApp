class User < ApplicationRecord
    has_many :reviews
    has_many :festivals, through: :reviews
    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    # validates :first_name, presence: true
    # validates :last_name, presence: true
    validates :username, length: { minimum:3, maximum:25 }
    validates_format_of :username, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
