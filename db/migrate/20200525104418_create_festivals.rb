class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :localization
      t.string :genre
      t.string :description
      t.references :attachment, :polymorphic => {:default => 'Photo'}
      t.integer :like
      

      t.timestamps
    end
  end
end
