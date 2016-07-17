class AddAttachmentSourceToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :source
    end
  end

  def self.down
    remove_attachment :pictures, :source
  end
end
