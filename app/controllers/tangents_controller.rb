class TangentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tangent, only: [:show, :edit, :update, :destroy]

  # GET /tangents
  # GET /tangents.json
  def index
    @tangents = Tangent.all
  end

  # GET /tangents/1
  # GET /tangents/1.json
  def show
  end

  # GET /tangents/new
  def new
    @tangent = Tangent.new
  end

  # GET /tangents/1/edit
  def edit
  end

  # POST /tangents
  # POST /tangents.json
  def create
    @tangent = Tangent.new(tangent_params)

    respond_to do |format|
      if @tangent.save
        format.html { redirect_to @tangent, notice: 'Tangent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tangent }
      else
        format.html { render action: 'new' }
        format.json { render json: @tangent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tangents/1
  # PATCH/PUT /tangents/1.json
  def update
    respond_to do |format|
      if @tangent.update(tangent_params)
        format.html { redirect_to @tangent, notice: 'Tangent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tangent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tangents/1
  # DELETE /tangents/1.json
  def destroy
    @tangent.destroy
    respond_to do |format|
      format.html { redirect_to tangents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tangent
      @tangent = Tangent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tangent_params
      params.require(:tangent).permit(:name, :description)
    end
end
