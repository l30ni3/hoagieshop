class VeggiesController < ApplicationController
  before_action :set_veggy, only: [:show, :edit, :update, :destroy]

  # GET /veggies
  # GET /veggies.json
  def index
    @veggies = Veggie.all
  end

  # GET /veggies/1
  # GET /veggies/1.json
  def show
  end

  # GET /veggies/new
  def new
    @veggy = Veggie.new
  end

  # GET /veggies/1/edit
  def edit
  end

  # POST /veggies
  # POST /veggies.json
  def create
    @veggy = Veggie.new(veggy_params)

    respond_to do |format|
      if @veggy.save
        format.html { redirect_to @veggy, notice: 'Veggie was successfully created.' }
        format.json { render :show, status: :created, location: @veggy }
      else
        format.html { render :new }
        format.json { render json: @veggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veggies/1
  # PATCH/PUT /veggies/1.json
  def update
    respond_to do |format|
      if @veggy.update(veggy_params)
        format.html { redirect_to @veggy, notice: 'Veggie was successfully updated.' }
        format.json { render :show, status: :ok, location: @veggy }
      else
        format.html { render :edit }
        format.json { render json: @veggy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veggies/1
  # DELETE /veggies/1.json
  def destroy
    @veggy.destroy
    respond_to do |format|
      format.html { redirect_to veggies_url, notice: 'Veggie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veggy
      @veggy = Veggie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veggy_params
      params.require(:veggy).permit(:vID, :vName)
    end
end
