module Pets
	class Breed
		include Mongoid::Document

		field :name
		
		belongs_to :type, class_name: 'Pets::Type'
		has_many :pets
	end
end