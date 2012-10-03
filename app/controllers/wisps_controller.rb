class WispsController < ApplicationController
  # GET /wisps
  # GET /wisps.json
  def index
    @wisps = Wisp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wisps }
    end
  end

  # GET /wisps/1
  # GET /wisps/1.json
  def show
    @wisp = Wisp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wisp }
    end
  end

  # GET /wisps/new
  # GET /wisps/new.json
  def new
    @wisp = Wisp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wisp }
    end
  end

  # GET /wisps/1/edit
  def edit
    @wisp = Wisp.find(params[:id])
  end

  # POST /wisps
  # POST /wisps.json
  def create
    @wisp = Wisp.new(params[:wisp])

    respond_to do |format|
      if @wisp.save
        format.html { redirect_to @wisp, notice: 'Wisp was successfully created.' }
        format.json { render json: @wisp, status: :created, location: @wisp }
      else
        format.html { render action: "new" }
        format.json { render json: @wisp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wisps/1
  # PUT /wisps/1.json
  def update
    @wisp = Wisp.find(params[:id])

    respond_to do |format|
      if @wisp.update_attributes(params[:wisp])
        format.html { redirect_to @wisp, notice: 'Wisp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wisp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wisps/1
  # DELETE /wisps/1.json
  def destroy
    @wisp = Wisp.find(params[:id])
    @wisp.destroy

    respond_to do |format|
      format.html { redirect_to wisps_url }
      format.json { head :no_content }
    end
  end
end
