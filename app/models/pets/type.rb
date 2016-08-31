module Pets
	class Type
		include Mongoid::Document

		field :name

		has_many :pets
	end
end