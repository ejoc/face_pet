module PetHelper

	def pet_status(pet)
		return "En adopcion" if pet.status == :adoption
		"Buscando Pareja" if pet.status == :dating
	end

end