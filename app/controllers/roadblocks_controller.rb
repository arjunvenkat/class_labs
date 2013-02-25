class RoadblocksController < ApplicationController
  # GET /roadblocks
  # GET /roadblocks.json

  def set_solution
    roadblock = Roadblock.find(params[:id])
    roadblock.solution = params[:solution]
    roadblock.status = params[:status]
    roadblock.save
    redirect_to roadblock.enlistment_task.enlistment
  end

  def set_status
    roadblock = Roadblock.find(params[:id])
    roadblock.status = params[:status]
    roadblock.save
    redirect_to roadblock.enlistment_task.enlistment
  end

  def index
    @roadblocks = Roadblock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roadblocks }
    end
  end

  # GET /roadblocks/1
  # GET /roadblocks/1.json
  def show
    @roadblock = Roadblock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roadblock }
    end
  end

  # GET /roadblocks/new
  # GET /roadblocks/new.json
  def new
    @roadblock = Roadblock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roadblock }
    end
  end

  # GET /roadblocks/1/edit
  def edit
    @roadblock = Roadblock.find(params[:id])
  end

  # POST /roadblocks
  # POST /roadblocks.json
  def create
    @roadblock = Roadblock.new(params[:roadblock])

    respond_to do |format|
      if @roadblock.save
        format.html { redirect_to @roadblock.enlistment_task.enlistment, notice: 'Error saved' }
        format.json { render json: @roadblock, status: :created, location: @roadblock }
      else
        format.html { render action: "new" }
        format.json { render json: @roadblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roadblocks/1
  # PUT /roadblocks/1.json
  def update
    @roadblock = Roadblock.find(params[:id])

    respond_to do |format|
      if @roadblock.update_attributes(params[:roadblock])
        format.html { redirect_to @roadblock.enlistment_task.enlistment, notice: 'Roadblock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roadblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadblocks/1
  # DELETE /roadblocks/1.json
  def destroy
    @roadblock = Roadblock.find(params[:id])
    @roadblock.destroy

    respond_to do |format|
      format.html { redirect_to roadblocks_url }
      format.json { head :no_content }
    end
  end
end
