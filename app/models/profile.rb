class Profile
  include Mongoid::Document
  
  field :full_name, type: String
  field :location
  field :bio
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
end