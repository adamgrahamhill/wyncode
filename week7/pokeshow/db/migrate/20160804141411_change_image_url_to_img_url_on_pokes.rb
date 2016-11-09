class ChangeImageUrlToImgUrlOnPokes < ActiveRecord::Migration[5.0]
	def self.up
		rename_column :pokes, :image_url, :img_url
	end 
	def self.down
		rename_column :pokes, :img_url, :image_url
	end
end
