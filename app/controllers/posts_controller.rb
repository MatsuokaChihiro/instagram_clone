class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = 1
    
        if @post.save
            redirect_to post_url(@post), notice: 'Post was successfully created.'
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_url, notice: "Post was successfully destroyed."
    end
    
    private
    
    def post_params
        params.require(:post).permit(:description)
    end
end
