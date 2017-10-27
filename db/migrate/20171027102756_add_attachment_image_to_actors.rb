class AddAttachmentImageToActors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :actors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :actors, :image
  end
end
