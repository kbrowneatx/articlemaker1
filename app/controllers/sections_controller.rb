class SectionsController < ApplicationController
  def index
  	@article = Article.find(params[:article_id])
	@sections = @article.sections
  end

  def new
  end

  def create
  	@article = Article.find(params[:article_id])
	@section = @article.section.build(params[:section])
	if @section.save
		redirect_to @article
	else
		flash[:error] = "problem saving section"
		render :edit
	end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
