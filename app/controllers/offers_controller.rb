class OffersController < ApplicationController
	def index
		@offers = Offer.all
	end

	def create
		@ofer = Offer.new(offer_params)
		if @doubt.save
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