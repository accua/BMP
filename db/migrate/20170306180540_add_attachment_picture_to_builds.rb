class AddAttachmentPictureToBuilds < ActiveRecord::Migration
  def self.up
    change_table :builds do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :builds, :picture
  end
end
