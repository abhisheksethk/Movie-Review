class AddAttachmentImageToCelebrities < ActiveRecord::Migration
  def self.up
    change_table :celebrities do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :celebrities, :image
  end
end
