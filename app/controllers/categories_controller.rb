class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
  @catergory = Catergory.new(catergory_params)
  @catergory.save
  redirect_to catergory_path(@catergory)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(catergory_params)
    redirect_to category_path(category)
  end

  private

  def catergory_params
    params.require(:catergory).permit(:name)
  end
end
