class LoginService
  def initialize(params)
    @params = params
  end


  def login_action
    user = User.where(email: @params[:email])
    raise  LoginNotSuccessful, "Invalid Email" if user.count == 0
    raise if !user.first.authenticate(@params[:password])
    session_identifier = SessionIdentifier.new(user_id:user.first.id)
    session_identifier.authentication_token
  end
end