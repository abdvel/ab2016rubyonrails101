class ArticlesController < ApplicationController
  
  before_action :set_article,only: [:edit,:update,:show,:destroy]
  def new
    @article=Article.new
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save
    if @article.save
  redirect_to @article
else
  render 'new'
end
  end

def show

end

def edit

end

def update


  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

def destroy

  @article.destroy
  redirect_to articles_path
end


private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def set_article
      @article = Article.find(params[:id])
  end

end
