class FarmersMarketsController < ApplicationController
  before_filter :set_farmers_market, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @farmers_markets = FarmersMarket.all
    respond_with(@farmers_markets)
  end

  def show
    respond_with(@farmers_market)
  end

  def new
    @farmers_market = FarmersMarket.new
    respond_with(@farmers_market)
  end

  def edit
  end

  def create
    @farmers_market = FarmersMarket.new(params[:farmers_market])
    @farmers_market.save
    respond_with(@farmers_market)
  end

  def update
    @farmers_market.update_attributes(params[:farmers_market])
    respond_with(@farmers_market)
  end

  def destroy
    @farmers_market.destroy
    respond_with(@farmers_market)
  end

  private
    def set_farmers_market
      @farmers_market = FarmersMarket.find(params[:id])
    end
end
