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

  def get_categories
    response_hashlist = Hash.new
    @categories = Category.all
    #Access user id from session
    #p session["warden.user.user.key"][0][0]

    # Set Market Id in the session object in the home page
    session["market_id"] = params[:id]
    p params[:id]
    #@market_name = FarmersMarket.where("id = ?", params[:id]).select(:name).name
    #print @market_name
=begin
    p @categories
    i = 0
    @categories.each do |category|
      response_hashlist[i] = category.as_json
      i = i + 1
    end

    puts response_hashlist

    puts response_hashlist.to_json

     respond_to do |format|
      msg = response_hashlist
      format.json {render :json => msg}
    end
=end
    respond_to do |format|
      format.html { render :template => "categories/all" }
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
