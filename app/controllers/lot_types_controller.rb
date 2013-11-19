class LotTypesController < ApplicationController

before_filter  :load_location

  # GET /lot_types
  # GET /lot_types.json
  def index
    
    #Client.where("orders_count = ?", params[:orders])
    
    @lot_types = LotType.all   #where("location_id = ?", params[:id])
    @lot_types = @location.lot_types.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lot_types }
    end
  end

  # GET /lot_types/1
  # GET /lot_types/1.json
  def show
    @lot_type = LotType.find(params[:id])
    @lot_type = @location.lot_types.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lot_type }
    end
  end

  # GET /lot_types/new
  # GET /lot_types/new.json
  def new
    @lot_type = LotType.new
    @lot_type = @location.lot_type.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lot_type }
    end
  end

  # GET /lot_types/1/edit
  def edit
    @lot_type = LotType.find(params[:id])
    @lot_type = @location.lot_type.find(params[:id])

  end

  # POST /lot_types
  # POST /lot_types.json
  def create
    @lot_type = LotType.new(params[:lot_type])
    @lot_type = @location.lot_type.new(params[:lot_type])

    respond_to do |format|
      if @lot_type.save
        format.html { redirect_to @lot_type, notice: 'Lot type was successfully created.' }
        format.json { render json: @lot_type, status: :created, location: @lot_type }
      else
        format.html { render action: "new" }
        format.json { render json: @lot_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lot_types/1
  # PUT /lot_types/1.json
  def update
    @lot_type = LotType.find(params[:id])
    @lot_type = @location.lot_type.find(params[:id])

    respond_to do |format|
      if @lot_type.update_attributes(params[:lot_type])
        format.html { redirect_to @lot_type, notice: 'Lot type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lot_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lot_types/1
  # DELETE /lot_types/1.json
  def destroy
    @lot_type = LotType.find(params[:id])
    @lot_type = @location.lot_type.find(params[:id])
    @lot_type.destroy

    respond_to do |format|
      format.html { redirect_to lot_types_url }
      format.json { head :no_content }
    end
  end


  private

    def load_location
      @location = Location.find(params[:location_id])
    end





end
