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
  
  def sponser
      @product = Accessories.order("RANDOM()").first(2)
    @ads = Array.new
    @product.each do |i|
        @ads.push(i.productId)
    end
    my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.first}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
    showProd(my_hash)
    $firstTitle = $title
    $firstImg   = $bigImage
    $firstLink  = $link
    my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.last}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
    showProd(my_hash)
    $lastTitle = $title
    $lastImg  = $bigImage
    $lastLink  = $link
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
