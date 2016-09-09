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

  as_enum :age,     [:young, :adult, :senior, :puppy], field: { :type => Integer }
  as_enum :gender, [:male, :female], field: { :type => Integer }
  
  belongs_to :user
  
  belongs_to :breed, class_name: 'Pets::Breed'

  embeds_many :photos, class_name: 'PetPhoto', cascade_callbacks: true

  search_in :pname, :breed => :name

  validates_presence_of :pname

  validate :has_at_least_one_photo

  def has_at_least_one_photo
    if photos.empty?
      errors[:base] << "Please add at least one photo"
    end
  end

  def owner
    user
  end
end