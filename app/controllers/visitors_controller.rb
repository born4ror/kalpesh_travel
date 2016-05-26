class VisitorsController < ApplicationController
	def index
		@blog = Blog.all
	end
end
