class CategoriesController < ApplicationController
  before_filter :set_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categories = Category.all
    respond_with(@categories)
  end

  def show
    respond_with(@category)
  end

  def new
    @category = Category.new
    respond_with(@category)
  end

  def all
    @categories = Category.all
    #Access user id from session
    p session["warden.user.user.key"][0][0]
    # Set Market Id in the session object
    session["market_id"] = 1
    p session["market_id"]
    
    p @categories
    
    #respond_with(@categories)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  def edit
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    respond_with(@category)
  end

  def update
    @category.update_attributes(params[:category])
    respond_with(@category)
  end

  def destroy
    @category.destroy
    respond_with(@category)
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end
end
