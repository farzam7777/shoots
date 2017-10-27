class Shoot < ApplicationRecord
	has_many :ActorShootMaps, dependent: :destroy
	has_many :actors, through: :ActorShootMaps
	has_many :CrewShootMaps, dependent: :destroy
	has_many :CrewMembers, through: :CrewShootMaps

	accepts_nested_attributes_for :ActorShootMaps, allow_destroy: true
	accepts_nested_attributes_for :CrewShootMaps, allow_destroy: true

	validates_presence_of :title
	validates_presence_of :start_date

	def to_s
  	title
  end
end
