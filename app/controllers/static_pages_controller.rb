class StaticPagesController < ApplicationController
  def home
	
  end
  def about
  end

  def contact
  end

  def advertisement
  	@Cats = [ 'Accessories', 'Art', 'Pets', 'Toys', 'Woodworking' ]
    AdMailer.send_ad_email(@seller).deliver
  end

end
