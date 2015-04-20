class ProductsController < ApplicationController
  before_filter :set_product, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @products = Product.all
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    respond_with(@product)
  end

  def edit
  end

  def get_all_products
    response_hashlist = Hash.new
    p "session id"
    p session["market_id"]
    market_id = session["market_id"]
    @products = Product.where("FarmersMarket_id = ?",market_id)
    p @products

    i = 0
    @products.each do |product|
      response_hashlist[i] = product.as_json
      i = i + 1
    end

    puts response_hashlist

    puts response_hashlist.to_json

     respond_to do |format|
      msg = response_hashlist
      format.json {render :json => msg}
    end

  end

  def get_products
    response_hashlist = Hash.new
    p "session id"
    p session["market_id"]
    market_id = session["market_id"]
    category_id = params[:category]
    @products = Product.where("FarmersMarket_id = ? AND Category_id = ?",market_id, category_id)
    p @products

    i = 0
    @products.each do |product|
      response_hashlist[i] = product.as_json
      i = i + 1
    end

    puts response_hashlist

    puts response_hashlist.to_json

     respond_to do |format|
      msg = response_hashlist
      format.json {render :json => msg}
    end

  end


  def create
    @product = Product.new(params[:product])
    @product.save
    respond_with(@product)
  end

  def update
    @product.update_attributes(params[:product])
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end
end
