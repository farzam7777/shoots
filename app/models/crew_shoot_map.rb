class CrewShootMap < ApplicationRecord
	belongs_to :CrewMember
	belongs_to :shoot
end
