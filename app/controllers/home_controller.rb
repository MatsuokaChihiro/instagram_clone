class HomeController < ApplicationController
    def index
       @posts = Post.all
    end

    def new
        @home = Home.new
    end

    def create
        @home = Home.new(home_params)
    
        if @home.save
          redirect_to home_url(@home), notice: 'Home was successfully created.'
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      private
    
      def home_params
        params.require(:home).permit(:title, :content)
      end
end
