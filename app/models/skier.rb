class Skier < ActiveRecord::Base
	has_many :featurings
	has_many :videos, through: :featurings

	def to_s
		name
	end
end
