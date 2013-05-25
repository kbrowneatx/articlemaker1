class ArticlesController < ApplicationController
  def index
	@articles = Article.all
  end

  def show
	@article = Article.find(params[:id])
	@sections = @article.sections.all
  end

  def new
	@article = Article.new
	@section = @article.sections.new
  end

  def create
	@article = Article.new(params[:article])
	if @article.save
		redirect_to @article
	else
		flash[:error] = "Problem saving article"
		render :edit
	end
  end

  def edit
	@article = Article.find(params[:id])
  end

  def update
	@article = Article.find(params[:id])
	if @article.update_attributes(params[:article])
		redirect_to articles_path
	else
		render :edit
	end
  end

  def destroy
	@article = Article.find(params[:id])
	if @article.destroy
		redirect_to articles_path
	else
		flash[:error] = "Problem deleting article"
		redirect_to @article
	end
  end
end
