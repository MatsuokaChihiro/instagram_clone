class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
    
        if @article.save
          redirect_to article_url(@article), notice: 'Article was successfully created.'
        else
          render :new, status: :unprocessable_entity
        end
    end
    
    private
    
    def article_params
        params.require(:article).permit(:title, :content)
    end
end
