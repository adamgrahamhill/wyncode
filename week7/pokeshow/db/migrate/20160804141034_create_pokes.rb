class CreatePokes < ActiveRecord::Migration[5.0]
  def change
    create_table :pokes do |t|
      t.string :name
      t.string :image_url
      t.integer :catch_rate
      t.string :lyrics

      t.timestamps
    end
  end
end
