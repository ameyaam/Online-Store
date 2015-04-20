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

  def get_nearby_markets
    response_hashlist = Hash.new
    @nearby_markets = FarmersMarket.where("city = ?", params[:city])
    puts"**************PRINTING FARMERS MARKETS**************"
    
    i = 0
    @nearby_markets.each do |market|
      response_hashlist[i] = market.as_json
      i = i + 1
    end

    puts response_hashlist

    puts response_hashlist.to_json
    #respond_with(response_hashlist)

    respond_to do |format|
      #msg = {:name => "ameya", :city => "philly"}
      msg = response_hashlist
      format.json {render :json => msg}
    end
  end
  
  private
    def set_farmers_market
      @farmers_market = FarmersMarket.find(params[:id])
    end
end
