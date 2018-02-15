class VisitorsController < ApplicationController
	def index
		@domains =  current_user.domains
	end
end
