class Band < ApplicationRecord
    has_many :performances
    has_many :festivals, through: :performances

    # Band should appear on a givin Festival once
    validates: 
end
