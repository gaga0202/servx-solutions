class SessionController < ApplicationController

  def login

  end



  def signup
    permitted_params = permit_params(params)


  end


  private


  def permit_params(params)
    params.permit(:first_name,:last_name,:email,:password,:confirm_password)
  end


end