class CrewShootMap < ApplicationRecord
	belongs_to :CrewMember, foreign_key: "crew_member_id"
	belongs_to :shoot

	validates_uniqueness_of :crew_member_id, scope: :shoot_id
end
