class ProfilesController < ApplicationController
    def edit

    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
          redirect_to @post, notice: "Post was successfully updated."
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def show
        
    end
end
