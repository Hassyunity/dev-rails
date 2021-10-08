class CommentsController < ApplicationController
    http_basic_authenticate_with name: "comment", password: "1234", except: [:index, :show]

    before_action :set_post, only: [:create, :destroy]
    
    def create 
        
        redirect_to article_path(@article) 
    end 
       
    def destroy 
        
        @comment.destroy
        redirect_to article_path(@article)
    end

    
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end

    def set_post
        @article = Article.find(params[:article_id]) 
        @comment = @article.comments.create(comment_params) 
    end

    # def arrond
    #     puts " debut"
    #     yield
    #     puts "fin"
    # end
end
