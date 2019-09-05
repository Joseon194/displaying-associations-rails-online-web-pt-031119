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
  @category = Category.new(catergory_params)
  @category.save
  redirect_to catergory_path(@category)
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

  def category_params
    params.require(:category).permit(:name)
  end
end
