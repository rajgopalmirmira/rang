class AddAttachmentImageToPhotographers < ActiveRecord::Migration
  def self.up
    change_table :photographers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photographers, :image
  end
end
