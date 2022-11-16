class Api::UserProfilesController < ApplicationController

    def show
        @profile = UserProfile.find_by(user_id: params[:id])
        render json: @profile, status: :ok
    end

    def update
        user = current_user.user_profile.update!(update_params)
        render json: user, status: :created
    end

    private

    def update_params
        params.permit(:full_name, :age, :gender, :bio, :image_upload)
    end

end
