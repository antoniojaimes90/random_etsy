class AdMailer < ActionMailer::Base
  default from: "antoniojaimes90@gmail.com"

  def send_ad_email(user)
  	@user = user
  	mail( :to => "antoniojaimes90@gmail.com",
  		:subject => 'We will stay in touch!')
  end

end
