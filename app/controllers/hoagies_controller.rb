# frozen_string_literal: true

class HoagiesController < ApplicationController
  before_action :set_hoagy, only: %i[show edit update destroy]

  # GET /hoagies
  # GET /hoagies.json
  def index
    @hoagies = Hoagie.all
  end

  # GET /hoagies/1
  # GET /hoagies/1.json
  def show;
    @hoagy = Hoagie.find(params[:id])
  end

  # GET /hoagies/new
  def new
    @hoagy = Hoagie.new
    # @hoagy.save
  end

  # GET /hoagies/1/edit
  def edit; end

  # POST /hoagies
  # POST /hoagies.json
  def create
    @hoagy = Hoagie.new(hoagy_params)
    # @hoagy.save

    respond_to do |format|
      if @hoagy.save
        format.html { redirect_to @hoagy, notice: 'Hoagie was successfully created.' }
        format.json { render :show, status: :created, location: @hoagy }
      else
        format.html { render :new }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoagies/1
  # PATCH/PUT /hoagies/1.json
  def update
    respond_to do |format|
      if @hoagy.update(hoagy_params)
        format.html { redirect_to @hoagy, notice: 'Hoagie was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoagy }
      else
        format.html { render :edit }
        format.json { render json: @hoagy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoagies/1
  # DELETE /hoagies/1.json
  def destroy
    @hoagy.destroy
    respond_to do |format|
      format.html { redirect_to hoagies_url, notice: 'Hoagie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hoagy
    @hoagy = Hoagie.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hoagy_params
    params.require(:hoagies).permit(:hoagieID, :bread, :main1, :main2, :veggies1, :veggies2, :veggies3, :veggies4, :veggies5, :sauce1, :sauce2, :created, :user, :orderID)
    end
end
