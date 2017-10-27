class AddAttachmentImageToCrewMembers < ActiveRecord::Migration[5.1]
  def self.up
    change_table :crew_members do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :crew_members, :image
  end
end
