class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :festival_id
      t.string :band_id
      t.integer :stage

      t.timestamps
    end
  end
end
