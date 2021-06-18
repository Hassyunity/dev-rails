class ArticlesController < ApplicationController
  layout Proc.new { |controller| controller.request.xhr? ? "popup" : "application" }
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else

      render :new
    end
  end 

  def edit
    @article = Article.find(params[:id])
  end

  

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end


  private
    def article_params
      params.require(:article).permit(:title, :body)
      
    end

  end

  def upload
    uploaded_file = params[:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
      file.write(uploaded_file.read)
    end
  end

  class LabellingFormBuilder < ActionView::Helpers::FormBuilder
    def text_field(attribute, options={})
      label(attribute) + super
    end
  end
  