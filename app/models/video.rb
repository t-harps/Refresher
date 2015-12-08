class Video < ActiveRecord::Base
	has_many :featurings
	has_many :taggings
	has_many :tags, through: :taggings
	has_many :skiers, through: :featurings

  def self.search(search)
  	if search
  		joins(:tags, :skiers).where('tags.name LIKE ? or skiers.name LIKE ?', "%#{search}%", "%#{search}%").uniq
  	else
  		find(:all)
  	end
  end

	def skier_list
 		skiers.join(", ")
	end

	def skier_list=(skiers_string)
		skier_names = skiers_string.split(",").collect{|s| s.strip}.uniq
	  new_or_found_skiers = skier_names.collect { |name| Skier.find_or_create_by(name: name) }
	  self.skiers = new_or_found_skiers
	end

	def tag_list
 		tags.join(", ")
	end

	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
	  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
	  self.tags = new_or_found_tags
	end
end
