class OffersController < ApplicationController

	before_action :authenticate_user!

	def index
		@offers = Offer.all
	end

	def create
		@doubt = Doubt.find_by_id(params[:id])
		@offer = @doubt.offer.new(offer_params)
		if @offer.save
			render json: @offer
		else
			render json: @offer.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@offer = Offer.find(params[:id])
		@offer.destroy
		head :no_content
	end

	private
	def offer_params
		params.require(:offer).permit(:currency, :amount, :description)
	end
end