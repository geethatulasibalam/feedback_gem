require_dependency "feedback_gem/application_controller"

module FeedbackGem
  class FeedbacksController < ApplicationController
  	def index
  		@feedbacks = Feedback.order('created_at DESC')
      @feedbacks = @feedbacks.search(params[:search]) if params[:search].present?
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
        flash[:success] = "Feedback successfully created"
  			redirect_to feedbacks_path
  		else
        flash[:error] = "Feeback is not created"
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
        flash[:success] = "Feedback has been successfully updated"
  			redirect_to feedbacks_path
  		else
        flash[:error] = "Feedback not updated"
  			render 'edit'
  		end
  	end
  	def destroy
  		feedback
  		@feedback.destroy
      flash[:success] = "Feedback successfully destroyed"
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
