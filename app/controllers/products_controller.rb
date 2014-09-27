class ProductsController < ApplicationController
	require 'open-uri'
	require 'json'
	def Etsy(product_Id)
		$productId = product_Id 
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		Current($current)
		$bigImageP = $bigImage
		multiImg($productId)
		sponser()
	end
	def Accessories
		$current = 'Accessories'
		$prodId= Array.new
		@product = Accessories.order("RANDOM()").first
		$productId = @product.productId		
		Etsy($productId)
	end
	def Art
		$current = 'Art'
		$prodId= Array.new
		@product = Art.order("RANDOM()").first
		$productId = @product.productId		
		Etsy($productId)
	end
	def Toys
		$current = 'Toys'
		$prodId= Array.new
		@product = Toys.order("RANDOM()").first
		$productId = @product.productId			
		Etsy($productId)
	end
	def Jewelry
		$current = 'Jewelry'
		$prodId= Array.new
		@product = Jewelry.order("RANDOM()").first
		$productId = @product.productId		
		Etsy($productId)
	end
	def Woodworking
		$current = 'Woodworking'
		$prodId= Array.new
		@product = Woodworking.order("RANDOM()").first
		$productId = @product.productId		
		Etsy($productId)
		
	end
	def Pets
		$current = 'Pets'
		$prodId= Array.new
		@product = Pets.order("RANDOM()").first
		$productId = @product.productId		
		Etsy($productId)
	end
	
end
