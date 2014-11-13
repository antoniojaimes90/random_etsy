class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  $Etsy_API = 'vbnyg7rw8596htzyvf1lpm2n'  
  
  def showProd(my_hash)
      
  	my_hash["results"].each do |results|
      $title = results["title"]
      $price = results["price"]
			$linky = results["url"]
			$description = results["description"]
			$bigImage = results["MainImage"]["url_fullxfull"]
      @Cats = [ 'Accessories', 'Art', 'Kids', 'Pets', 'Toys', 'Woodworking' ]

		end
 	end

  def showAd(my_hash)
      
    my_hash["results"].each do |results|
      $titleAd = results["title"]
      
      $linkAd = results["url"]
      
      $bigImage = results["MainImage"]["url_fullxfull"]
      

    end
  end
  
  def Current(current)
    $current = current 
  end  

  def sponser
    
    @product = Accessories.order("RANDOM()").first(2)
    @ads = Array.new
    @product.each do |i|
      @ads.push(i.productId)
    end
    my_hashF = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.first}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
    showAd(my_hashF)
    $firstTitle = $titleAd
    $firstImg   = $bigImage
    $firstLink  = $linkAd
    my_hashL = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.last}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
    showAd(my_hashL)
    $lastTitle = $titleAd
    $lastImg  = $bigImage
    $lastLink  =  $linkAd
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
