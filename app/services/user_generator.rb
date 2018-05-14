class UserGenerator
  attr_reader :user, :error
  
  def initialize params
    @params = params
  end
  
  def call
    @user = User.create(@params)
    @error = !@user.persisted?
    PostGenerator.new(user_id: @params[:id]).call
    self
  end
  
end