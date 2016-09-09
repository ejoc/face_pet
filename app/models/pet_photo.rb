class PetPhoto
	include Mongoid::Document
	include Mongoid::Timestamps
	
  embedded_in :photos, class_name: 'Pet'

  mount_uploader :photo, PetPhotoUploader
end