class Festival < ApplicationRecord
    has_many :performances
    has_many :bands, through: :performances
    has_many :festival_comments
    validates :name, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :localization, presence: true
    validates :description, length: { maximum:500 }

    def self.search(query)
        if query.present?
          where('NAME like ?', "%#{query}%")
        else
          self.all
        end
    end 
    
end
