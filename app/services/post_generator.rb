class PostGenerator
  attr_reader :post, :error
  
  def initialize params
    @params = params
  end
  
  def call
    @id=@params[:user_id]
    @user= User.find_by(id: @id)
    if @user.posts.empty?
    @post = Post.create(@params)
    @error = !@post.persisted?
    end
  end
  
  
end