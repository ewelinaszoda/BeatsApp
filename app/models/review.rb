class Review < ApplicationRecord
    belongs_to :festival
    belongs_to :user
    
    validates :text, presence: true
    validates :text, length: {minimum:2, maximum:200}
end
