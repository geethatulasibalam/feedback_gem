require_dependency "feedback_gem/application_controller"

module FeedbackGem
  class FeedbacksController < ApplicationController
  	def index
  		@feedbacks = Feedback.all
  	end
  	def new
  		@feedback = Feedback.new
  	end
  	def show
  		feedback
  	end
  	def create
  		@feedback = Feedback.new(feedback_params)
  		if@feedback.save
  			redirect_to @feedback
  		else
  			render 'new'
  		end
  	end
  	def edit
  		feedback
  	end
  	def update
  		# binding.pry
  		feedback
  		if @feedback.update(feedback_params)
  			redirect_to feedbacks_path
  		else
  			render 'edit'
  		end
  	end
  	def destroy
  		feedback
  		@feedback.destroy
  		redirect_to feedbacks_path
  	end
  	private
  	def feedback_params
  		params.require(:feedback).permit(:name,:email,:subject,:description)
  	end
  	def feedback
  		@feedback = Feedback.find_by(id:params[:id])
  	end
  end
end
