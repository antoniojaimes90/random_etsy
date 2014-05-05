class CategoriesController < ApplicationController
  def list
  	if params[:cat] == "yes"
  		$list = params[:list]
  		pages = [1,2,3,4,5]

		if $list == "Accessories"
			pages.each do |i|	
				prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
				prod_hash["results"].each do |results|
					Accessories.create(productId: results["listing_id"])			
				end
			end
			$updated = "Accessories Updated" 
		else
			if $list == "Woodworking"
				pages.each do |i|
					prod_hash=  JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
					prod_hash["results"].each do |results|
						Woodworking.create(productId: results["listing_id"])
					end
				end
				$updated = "Woodworking Updated" 
			else
				if $list == "Jewelry"
					pages.each do |i|	
						prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
						prod_hash["results"].each do |results|
							Jewelry.create(productId: results["listing_id"])
						end
					end
					$updated = "Jewelry Updated" 
				else
					if $list == "Art"
						pages.each do |i|	
							prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
							prod_hash["results"].each do |results|
								Art.create(productId: results["listing_id"])
							end
						end
						$updated = "Art Updated" 
					else
						if $list == "Pets"
							pages.each do |i|	
								prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
								prod_hash["results"].each do |results|
									Pets.create(productId: results["listing_id"])
								end
							end
							$updated = "Pets Updated" 
						else
							if $list == "Toys"
								pages.each do |i|	
									prod_hash= JSON.parse(open("https://openapi.etsy.com/v2/listings/active?api_key=vbnyg7rw8596htzyvf1lpm2n&limit=100&category=#{$list}&page=#{i}").read)
									prod_hash["results"].each do |results|
										Toys.create(productId: results["listing_id"])
									end
								end
								$updated = "Toys Updated" 
							else
								$updated = "No Matches" 
							end
						end
					end
				end
			end
		end
  	else
  		
  	end
  end
end
