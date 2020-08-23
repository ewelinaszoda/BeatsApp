class ChangeUserId < ActiveRecord::Migration[6.0]
  def change
    change_column(:reviews, :user_id, :integer, default: 759)
  end
end
