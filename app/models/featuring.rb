class Featuring < ActiveRecord::Base
	belongs_to :skier, dependent: :destroy
	belongs_to :video, dependent: :destroy
end
