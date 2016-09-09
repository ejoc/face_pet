class Pet
  include Mongoid::Document
  include Mongoid::Timestamps
  include SimpleEnum::Mongoid
  include Mongoid::Search

  field :pname,			   type: String
  # field :age, 		type: Integer
  field :bio,          type: String
  field :for_adoption, type: Boolean
  field :city,			   type: String

  as_enum :age,     [:young, :adult, :senior, :puppy], field: { :type => Integer, :default => 0 }
  # as_enum :genre,   [:male, :female], map: :string
  as_enum :gender, [:male, :female], field: { :type => Integer, :default => 0 }
  
  belongs_to :user
  
  belongs_to :breed, class_name: 'Pets::Breed'

  # mount_uploader :avatar, AvatarUploader
  embeds_many :photos, class_name: 'PetPhoto', cascade_callbacks: true

  # mount_uploaders :photos, PetPhotoUploader

  search_in :pname, :breed => :name

  def owner
    user
  end
end