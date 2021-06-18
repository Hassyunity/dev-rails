class ApplicationController < ActionController::Base
  layout "main"
   
  #  arround_action :set_time_zone

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to(@article)
           # render plain: "Update Done"
        else
          render plain: "The Update faled because the body is too short"
        end
    end
      
end
