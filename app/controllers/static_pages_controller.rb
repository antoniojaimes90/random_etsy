class StaticPagesController < ApplicationController
  def home
	
  end
  def about
  end

  def contact
  end

  def advertisement
  	@Cats = [ 'Accessories', 'Art', 'Pets', 'Toys', 'Woodworking' ]
  end

end
