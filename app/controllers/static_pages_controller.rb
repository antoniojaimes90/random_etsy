class StaticPagesController < ApplicationController
  def home
	
  end
  def about
  end

  def contact
  end

  def advertisement
  	@Cats = [ 'Accessories', 'Art', 'Pets', 'Toys', 'Woodworking' ]
    if params[:submited] == "yes" 
      $email = params[:Email] 
      $name = params[:Name] 
      $catAd = params[:category] 
      AdMailer.send_ad_email(@seller).deliver
    end
  end

end
