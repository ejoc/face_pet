class Profile
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :full_name, type: String
  field :location,	type: String
  field :bio,				type: String
  field :phone,			type: String
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
end