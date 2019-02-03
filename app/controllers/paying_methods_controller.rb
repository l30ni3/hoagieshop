# frozen_string_literal: true

class PayingMethodsController < ApplicationController
  before_action :set_paying_method, only: %i[show edit update destroy]

  # GET /paying_methods
  # GET /paying_methods.json
  def index
    @paying_methods = PayingMethod.all
  end

  # GET /paying_methods/1
  # GET /paying_methods/1.json
  def show; end

  # GET /paying_methods/new
  def new
    @paying_method = PayingMethod.new
  end

  # GET /paying_methods/1/edit
  def edit; end

  # POST /paying_methods
  # POST /paying_methods.json
  def create
    @paying_method = PayingMethod.new(paying_method_params)

    respond_to do |format|
      if @paying_method.save
        format.html { redirect_to @paying_method, notice: 'Paying method was successfully created.' }
        format.json { render :show, status: :created, location: @paying_method }
      else
        format.html { render :new }
        format.json { render json: @paying_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paying_methods/1
  # PATCH/PUT /paying_methods/1.json
  def update
    respond_to do |format|
      if @paying_method.update(paying_method_params)
        format.html { redirect_to @paying_method, notice: 'Paying method was successfully updated.' }
        format.json { render :show, status: :ok, location: @paying_method }
      else
        format.html { render :edit }
        format.json { render json: @paying_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paying_methods/1
  # DELETE /paying_methods/1.json
  def destroy
    @paying_method.destroy
    respond_to do |format|
      format.html { redirect_to paying_methods_url, notice: 'Paying method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_paying_method
    @paying_method = PayingMethod.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def paying_method_params
    params.require(:paying_method).permit(:provider)
  end
end
