class StaticPagesController < ApplicationController
  def home
	@product = Accessories.order("RANDOM()").first(2)
	@ads = Array.new
	@product.each do |i|
			@ads.push(i.productId)
	end
	my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.first}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
	showProd(my_hash)
	$firstTitle = $title
	$firstImg   = $bigImage
	$firstLink 	= $link
	my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{@ads.last}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
	showProd(my_hash)
	$lastTitle = $title
	$lastImg  = $bigImage
	$lastLink  = $link
  end
  def about
  end

  def contact
  end
end
