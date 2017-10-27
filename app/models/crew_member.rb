class CrewMember < ApplicationRecord
	has_many :CrewShootMaps, dependent: :destroy
	has_many :shoots, through: :CrewShootMaps

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of :stage_name
  validates :phone, numericality: true
  
  def to_s
  	stage_name
  end
end
