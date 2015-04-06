class FarmersMarketsController < ApplicationController
  # GET /farmers_markets
  # GET /farmers_markets.json
  def index
    @farmers_markets = FarmersMarket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @farmers_markets }
    end
  end

  # GET /farmers_markets/1
  # GET /farmers_markets/1.json
  def show
    @farmers_market = FarmersMarket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @farmers_market }
    end
  end

  # GET /farmers_markets/new
  # GET /farmers_markets/new.json
  def new
    @farmers_market = FarmersMarket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @farmers_market }
    end
  end

  # GET /farmers_markets/1/edit
  def edit
    @farmers_market = FarmersMarket.find(params[:id])
  end

  # POST /farmers_markets
  # POST /farmers_markets.json
  def create
    @farmers_market = FarmersMarket.new(params[:farmers_market])

    respond_to do |format|
      if @farmers_market.save
        format.html { redirect_to @farmers_market, notice: 'Farmers market was successfully created.' }
        format.json { render json: @farmers_market, status: :created, location: @farmers_market }
      else
        format.html { render action: "new" }
        format.json { render json: @farmers_market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /farmers_markets/1
  # PUT /farmers_markets/1.json
  def update
    @farmers_market = FarmersMarket.find(params[:id])

    respond_to do |format|
      if @farmers_market.update_attributes(params[:farmers_market])
        format.html { redirect_to @farmers_market, notice: 'Farmers market was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @farmers_market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmers_markets/1
  # DELETE /farmers_markets/1.json
  def destroy
    @farmers_market = FarmersMarket.find(params[:id])
    @farmers_market.destroy

    respond_to do |format|
      format.html { redirect_to farmers_markets_url }
      format.json { head :no_content }
    end
  end
end
