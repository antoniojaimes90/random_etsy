class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	def showProd(my_hash)
  		my_hash["results"].each do |results|
			$title = results["title"]
			$price = results["price"]
			$link = results["url"]
			$bigImage = results["MainImage"]["url_fullxfull"]
		end
 	end
  

end
