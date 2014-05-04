class ProductsController < ApplicationController
	def random
		require 'open-uri'
		require 'json'
		$prodId= Array.new
		prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=1&category=art").read)
		prod_hash["results"].each do |results|
			$prodId.push(results["listing_id"])
		end



		my_hash = JSON.parse(open("https://openapi.etsy.com/v2/listings/#{$prodId.sample}?api_key=vbnyg7rw8596htzyvf1lpm2n&includes=MainImage").read)
		
		my_hash["results"].each do |results|
			$title = results["title"]
			$price = results["price"]
			$link = results["url"]
			$bigImage = results["MainImage"]["url_fullxfull"]
			results["MainImage"].first do |results|
				$bigImage = results["listing_id"]
			end
		end
	end
end
