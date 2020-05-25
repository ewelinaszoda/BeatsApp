class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.string :name
      t.date :start_date
      t.date :finish_date
      t.string :localization
      t.string :genre
      t.integer :description
      t.references :attachment, :polymorphic => {:default => 'Photo'}
      t.integer :like
      

      t.timestamps
    end
  end
end
