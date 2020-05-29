class Review < ApplicationRecord
    belongs_to :festival
    belongs_to :user
    
    validates :text, presence: true
    validates :text, length: {minimum:2, maximum:200}
    # User should appear on a givin Festival once
    validates :user_id, uniqueness: { scope: :festival_id, 
        message: "already has been left for that festival."}
end
