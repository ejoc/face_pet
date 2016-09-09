class PetsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :photo, :photo_thumb, :photo_medium]
	before_action :set_pet, only: [:show, :edit, :update, :destroy, :set_pet_photo]
  before_action :set_pet_photo, only: [:photo, :photo_thumb, :photo_medium]

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    Rails.logger.debug "parametross: #{params[:pet][:photos]}"
    @pet = current_user.pets.new(pet_params)

    params[:pet][:photos][:photo].each {|photo| @pet.photos.build(photo: photo)} if params[:pet][:photos].present?

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def photo
    content = @pet_photo.photo.read
    if stale?(etag: content, last_modified: @pet_photo.updated_at.utc, public: true)
      send_data content, type: @pet_photo.photo.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  def photo_thumb
    content = @pet_photo.photo.thumb.read
    if stale?(etag: content, last_modified: @pet_photo.updated_at.utc, public: true)
      send_data content, type: @pet_photo.photo.thumb.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  def photo_medium
    content = @pet_photo.photo.medium.read
    if stale?(etag: content, last_modified: @pet_photo.updated_at.utc, public: true)
      send_data content, type: @pet_photo.photo.medium.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    def set_pet_photo
      @pet_photo = Pet.find(params[:id]).photos.find(params[:photo_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:pname, :gender_cd, :age_cd, :bio, :for_adoption, :photos, :breed_id)
    end
end