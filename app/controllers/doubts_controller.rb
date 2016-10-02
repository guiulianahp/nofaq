class DoubtsController < ApplicationController

	def index
		@doubts = Doubt.all
	end

	def new
	end

	def create
	end

	def destroy
	end

end