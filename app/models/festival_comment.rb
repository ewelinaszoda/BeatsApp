class FestivalComment < ApplicationRecord
    belongs_to :festival 
    has_one :user, through: :festival
end
