class DoubtsController < ApplicationController

	before_action :authenticate_user!

	def index
		@doubts = Doubt.all
	end

	def create
		@doubt = Doubt.new(doubt_params)
		if @doubt.save
			render json: @doubt
		else
			render json: @doubt.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@record = Record.find(params[:id])
		@record.destroy
		head :no_content
	end

	private

	def doubt_params
		params.require(:doubt).permit(:title, :description)
	end

end