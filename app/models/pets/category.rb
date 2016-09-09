module Pets
	class Category
		include Mongoid::Document

		field :name

		has_many :breeds, class_name: 'Pets::Breed'
	end
end