class CreateFestivalComments < ActiveRecord::Migration[6.0]
  def change
    create_table :festival_comments do |t|
      t.string :text
      t.integer :festival_id
      t.string :user_id

      t.timestamps
    end
  end
end
