class Performance < ApplicationRecord
    belongs_to :festival
    belongs_to :band
    validates :stage, presence: true
    validates :stage, inclusion: { in: 1..10 }
    # Band should appear on a givin Festival once
    validates :band, uniqueness: { scope: :festival, 
        message: "should only appear once per festival."}
end
