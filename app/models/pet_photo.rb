class PetPhoto
	include Mongoid::Document

  embedded_in :photos, class_name: 'Pet'

  mount_uploader :photo, PetPhotoUploader
end