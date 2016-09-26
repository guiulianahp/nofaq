class DoubtsController < ApplicationController
  before_action :set_doubt, only: [:show, :update, :destroy]

  # GET /doubts
  def index
    @doubts = Doubt.all

    render json: @doubts
  end

  # GET /doubts/1
  def show
    render json: @doubt
  end

  # POST /doubts
  def create
    @doubt = Doubt.new(doubt_params)

    if @doubt.save
      render json: @doubt, status: :created, location: @doubt
    else
      render json: @doubt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doubts/1
  def update
    if @doubt.update(doubt_params)
      render json: @doubt
    else
      render json: @doubt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doubts/1
  def destroy
    @doubt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doubt
      @doubt = Doubt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def doubt_params
      params.require(:doubt).permit(:title, :description)
    end
end
