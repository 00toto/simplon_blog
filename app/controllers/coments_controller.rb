class ComentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.coments.create!(params.require(:coment).permit!) 
    @users= User.all
    redirect_to @post
  end
  def destroy
    @coment = Coment.find(params[:id])
    @coment.destroy
    
    redirect_to posts_url
  end
end
