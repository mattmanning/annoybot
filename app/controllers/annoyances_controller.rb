class AnnoyancesController < ApplicationController
  # GET /annoyances
  # GET /annoyances.json
  def index
    @annoyances = Annoyance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @annoyances }
    end
  end

  # GET /annoyances/1
  # GET /annoyances/1.json
  def show
    @annoyance = Annoyance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @annoyance }
    end
  end

  # GET /annoyances/new
  # GET /annoyances/new.json
  def new
    @annoyance = Annoyance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @annoyance }
    end
  end

  # GET /annoyances/1/edit
  def edit
    @annoyance = Annoyance.find(params[:id])
  end

  # POST /annoyances
  # POST /annoyances.json
  def create
    @annoyance = Annoyance.new(params[:annoyance])

    respond_to do |format|
      if @annoyance.save
        format.html { redirect_to @annoyance, notice: 'Annoyance was successfully created.' }
        format.json { render json: @annoyance, status: :created, location: @annoyance }
      else
        format.html { render action: "new" }
        format.json { render json: @annoyance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /annoyances/1
  # PUT /annoyances/1.json
  def update
    @annoyance = Annoyance.find(params[:id])

    respond_to do |format|
      if @annoyance.update_attributes(params[:annoyance])
        format.html { redirect_to @annoyance, notice: 'Annoyance was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @annoyance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annoyances/1
  # DELETE /annoyances/1.json
  def destroy
    @annoyance = Annoyance.find(params[:id])
    @annoyance.destroy

    respond_to do |format|
      format.html { redirect_to annoyances_url }
      format.json { head :ok }
    end
  end
end
