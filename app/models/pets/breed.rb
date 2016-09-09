module Pets
	class Breed
		include Mongoid::Document

		field :name
		
		belongs_to :category, class_name: 'Pets::Category'
		has_many :pets
	end
end