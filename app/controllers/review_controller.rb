class ReviewController < ApplicationController

	  def create
	    @product = Product.find(params[:product_id])
	    @review = @product.reviews.create(review_params)
	    redirect_to @product
	  end
	 
	  private
	    def review_params
	      params.require(:review).permit(:rating, :description)
	    end
	end



end
