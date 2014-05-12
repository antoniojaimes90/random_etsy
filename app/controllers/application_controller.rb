class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def showProd(my_hash)

  		my_hash["results"].each do |results|
			$title = results["title"]
			$price = results["price"]
			$link = results["url"]
			$description = results["description"]
			$bigImage = results["MainImage"]["url_fullxfull"]
		end
 	end
  
  	def multiImg(prodId)
  		@images = Array.new
  		my_images = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{prodId}/images?api_key=vbnyg7rw8596htzyvf1lpm2n").read)
      $img_total = my_images["count"]
  		my_images["results"].each do |results|
  			@images.push(results["url_fullxfull"])
  		end
  	end

end
