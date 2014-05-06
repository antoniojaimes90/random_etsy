class ProductsController < ApplicationController
	require 'open-uri'
	require 'json'
	def Accessories
		
		$prodId= Array.new
		@product = Accessories.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
	end
	def Art
		$prodId= Array.new
		@product = Art.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
	end
	def Toys
		$prodId= Array.new
		@product = Toys.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
	end
	def Jewelry
		$prodId= Array.new
		@product = Jewelry.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
	end
	def Woodworking

		$prodId= Array.new
		@product = Woodworking.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
		
	end
	def Pets
		$prodId= Array.new
		@product = Pets.order("RANDOM()").first
		$productId = @product.productId		
		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$productId}?api_key=vbnyg7rw8596htzyvf1lpm2n&fields=title,url,price,description&includes=MainImage").read)
		showProd(my_hash)
		multiImg($productId)
	end
end
