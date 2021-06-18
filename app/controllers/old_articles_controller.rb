class OldArticlesController < SpecialArticlesController
    layout false
  
    def show
      @article = Article.find(params[:id])
    end
  
    def index
      @old_articles = Article.older
      render layout: "old"
    end
    # ...
  end
  