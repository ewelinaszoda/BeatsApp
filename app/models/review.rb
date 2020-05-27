class Review < ApplicationRecord
    belongs_to :festival
    belongs_to :user
    validates :text, presence: true
    # User should appear on a givin Festival once
    validates :user, uniqueness: { scope: :festival, 
        message: "already left the review for that festival."}
end