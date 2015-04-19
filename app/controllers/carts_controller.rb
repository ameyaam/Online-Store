class CartsController < ApplicationController
  before_filter :set_cart, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @carts = Cart.all
    respond_with(@carts)
  end

  def show
    respond_with(@cart)
  end

  def new
    @cart = Cart.new
    respond_with(@cart)
  end

  def edit
  end

  def create
    @cart = Cart.new(params[:cart])
    @cart.save
    respond_with(@cart)
  end

  def update
    @cart.update_attributes(params[:cart])
    respond_with(@cart)
  end

  def destroy
    @cart.destroy
    respond_with(@cart)
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end
end
