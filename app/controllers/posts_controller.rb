class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def show
        @post = Post.find(params[:id])
    end
    
    def create
        @post = Post.new(post_params)
    
        if @post
          redirecto_to root_url
        else
          render :new
        end
      end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to root_url, notice: "Post was successfully destroyed."
    end
    
    private
    
    def post_params
        params.require(:post).permit(:description, :thumbnail)
    end
end
