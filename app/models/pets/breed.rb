module Pets
	class Breed
		include Mongoid::Document

		field :name

		has_many :pets
	end
end