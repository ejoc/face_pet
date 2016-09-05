class ProfilesController < ApplicationController

	before_action :set_profile, only: [:show, :edit, :update, :avatar, :avatar_thumb, :avatar_medium]

	def show
	end

	def edit
	end

	def update
    if @profile.update(profile_params)
      # redirect_to :edit, notice: 'Profile was successfully updated.'
      redirect_to({ action: 'edit',id: @profile }, notice: 'Profile was successfully updated.')
    else
      render :edit
    end
	end

	def avatar
    content = @profile.avatar.read
    if stale?(etag: content, last_modified: @profile.updated_at.utc, public: true)
      send_data content, type: @profile.avatar.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  def avatar_thumb
    content = @profile.avatar.thumb.read
    if stale?(etag: content, last_modified: @profile.updated_at.utc, public: true)
      send_data content, type: @profile.avatar.thumb.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

  def avatar_medium
    content = @profile.avatar.medium.read
    if stale?(etag: content, last_modified: @profile.updated_at.utc, public: true)
      send_data content, type: @profile.avatar.medium.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = current_user.profile
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:full_name, :location, :bio, :avatar)
    end
end