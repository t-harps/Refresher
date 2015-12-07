class Tagging < ActiveRecord::Base
	belongs_to :tag, dependent: :destroy
	belongs_to :video, dependent: :destroy
end
