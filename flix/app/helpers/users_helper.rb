module UsersHelper
	def profile_image_for(user)
  		url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
  		image_tag(url, alt: user.name)
	end

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
end
