class ImagesController < ApplicationController
	before_filter :require_login
	before_filter :require_auction

	def index
		@images = @auction.images.order(:id)
		@image = @auction.images.build
	end

	def new
		@image = @auction.images.build
	end

	def create
		@image = @auction.images.build(image_params)
		if @image.save
			redirect_to [@auction, :images], notice: "Image uploaded. Check it out below."
		else
			@images = @auction.images.order(:id)
			render :index
		end
	end

	def image_params
		params.require(:image).permit(:auction_id, :file)
	end 

	protected

	def require_auction
		@auction = Auction.find(params[:auction_id])
	end

end
