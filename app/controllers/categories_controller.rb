class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to categories_url
    else
      render :action => :new
    end 
  end 
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to :action => :index
  end 
  
  def edit
     @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    redirect_to categories_url
  end
  
  def index
    @categories = Category.page(params[:page]).per(3)
    respond_to do |format|
      format.html
      format.json { render :json => @categories.to_json }
      
    end 
  end 
  
  def show 
    @category = Category.find(params[:id])
    respond_to do |format|
      format.json { render :json => @category.to_json }
    end
  end 
  
  def find_category
    @category = Category.find(params[:id])
  end 

end
