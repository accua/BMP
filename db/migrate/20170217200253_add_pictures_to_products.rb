class AddPicturesToProducts < ActiveRecord::Migration[5.0]
  def self.up
      change_table :products do |t|
        t.attachment :picture
      end
    end

    def self.down
      drop_attached_file :products, :picture
    end
  end
