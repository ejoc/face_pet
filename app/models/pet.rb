class Pet
  include Mongoid::Document
  include SimpleEnum::Mongoid

  field :pname,			   type: String
  # field :age, 		type: Integer
  field :city,			   type: String
  field :bio,				   type: String
  field :for_adoption, type: Boolean

  as_enum :age,     [:young, :adult, :senior, :puppy], map: :string
  as_enum :genre,   [:male, :female], map: :string
  belongs_to :user
  belongs_to :type, class_name: 'Pets::Type'
  belongs_to :type, class_name: 'Pets::Breed'

  # mount_uploader :avatar, AvatarUploader
  embeds_many :photos, class_name: 'PetPhoto'

  def owner
    user
  end
end