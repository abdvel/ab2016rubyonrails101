class ArticlesController < ApplicationController
  def new
  end

  def index
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to @article
  end


end
