class VisitorsController < ApplicationController
	def index
		if  user_signed_in?
			@blog = current_user.blogs.all
		end
	end
end
