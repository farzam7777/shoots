class Actor < ApplicationRecord
	has_many :ActorShootMaps, dependent: :destroy
	has_many :shoots, through: :ActorShootMaps

 	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
