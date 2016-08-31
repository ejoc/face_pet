class Pet
  include Mongoid::Document
  include SimpleEnum::Mongoid

  field :pname,			type: String
  # field :age, 		type: Integer
  field :city,			type: String
  field :bio,				type: String

  as_enum :age, 		[:young, :adult, :senior, :puppy], map: :string
  as_enum :genre,		[:male, :female], map: :string
  as_enum :status, 	[:for_adoption, :on_sale], map: :string
  belongs_to :user
  belongs_to :type, class_name: 'Pets::Type'
  belongs_to :type, class_name: 'Pets::Breed'

  mount_uploader :avatar, AvatarUploader
end