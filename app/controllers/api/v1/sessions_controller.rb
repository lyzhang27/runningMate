module Api::V1
  class SessionsController < Devise::SessionsController

    # POST /v1/login
    def create
      @user = User.find_by_email(user_params[:email])
      logger.info "Article should be valid: #{@article}"
      return invalid_login_attempt unless @user

      if @user.valid_password?(user_params[:password])
        logger.info "good password"
        sign_in :user, @user
        render json: @user
      else
        logger.info "bad password"
        invalid_login_attempt
      end
    end

    def destroy
      sign_out(@user)
      render :json=> {:success=>true}
    end


    private

    def invalid_login_attempt
      warden.custom_failure!
      render json: {error: 'invalid login attempt'}, status: :unprocessable_entity
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end