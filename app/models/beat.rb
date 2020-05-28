class Beat < ApplicationRecord

    def festivals_with_max_like
        @festivals.max_by(2) { |festival| festival.like }
    end 

end
