class SessionController < ApplicationController

  def login
    permitted_login_params = login_permit_params(params)
    login_service = LoginService.new(permitted_login_params)
    authentication_token  = login_service.login_action
    render json: {payload: {authentication_token: authentication_token, message: "User has been successfully signed in"} }, status: :ok
  end



  def signup
    permitted_params = permit_params(params)
    signup_validation_service = SignupValidationService.new(permitted_params)
    signup_validation_service.create_user
    render json: {payload: {message: "User has been created"} }, status: :ok
  end


  private


  def permit_params(params)
    params.permit(:first_name,:last_name,:email,:password,:confirm_password)
  end

  def login_permit_params(params)
    params.permit(:email, :password)
  end


end