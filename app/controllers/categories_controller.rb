class CategoriesController < ApplicationController

  before_filter :find_category, :only => [:show, :edit, :update, :destroy]

  def index
    @categories = Category.page(params[:page]).per(10)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    @category.save

    redirect_to category_path(@category)
  end

  def show
    
  end

  def edit

  end

  def update
    @category.update_attributes(params[:category])

    redirect_to category_path(@category)
  end

  protected
  
  def find_category
    @category = Category.find(params[:id])
  end
end
