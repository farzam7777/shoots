class Shoot < ApplicationRecord
	has_many :ActorShootMaps, dependent: :destroy
	has_many :actors, through: :ActorShootMaps
	has_many :CrewShootMaps, dependent: :destroy
	has_many :CrewMembers, through: :CrewShootMaps
end
