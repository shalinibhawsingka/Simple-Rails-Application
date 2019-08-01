class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice]="Image has been uploaded successfully"
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Successfully deleted photo!"
      redirect_to posts_path
    else
      flash[:notice] = "Error deleting photo!"
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :image)
  end
end
