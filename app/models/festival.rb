class Festival < ApplicationRecord
    has_many :performances
    has_many :bands, through: :performances
    has_many :festival_comments

    def self.search(query)
        if query.present?
          where('NAME like ?', "%#{query}%")
        else
          self.all
        end
    end 
    
end
