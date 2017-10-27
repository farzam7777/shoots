class ActorShootMap < ApplicationRecord
	belongs_to :actor
	belongs_to :shoot

	validates_uniqueness_of :actor_id, scope: :shoot_id
end
