class CitationsController < ApplicationController

  def index
    @citations = Citation.all
  end

  def show
    @citation = Citation.find(params[:id])
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.create(citation_params)
    redirect_to citation_path(@citation)
  end

  def edit
     @citation = Citation.find(params[:id])
  end

  def update
     @citation = Citation.find(params[:id])
     @citation.update(citation_params)
     redirect_to citation_path(@citation)
  end

  def destroy
    @citation = Citation.find(params[:id])
    @citation.destroy
    redirect_to citations_path
  end

  private
  def citation_params
    params.require(:citation).permit(:user, :content)
  end

end
