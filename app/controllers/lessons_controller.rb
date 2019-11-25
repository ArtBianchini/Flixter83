class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_authorized_for_current_user, only: [:show]

		def show
	end

	private
		def require_authorized_for_current_lesson
		if current_user.enrolled_in != current_user
			redirect_to static_pages_index, alert: 'Error Message Here'
	 end 
   end 
	helper_method :current_lesson
	def current_user.enrolled_in
		@current_user.enrolled_in ||= Current_user.enrolled_in.find(params[:id])
	end
end
