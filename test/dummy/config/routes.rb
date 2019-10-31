Rails.application.routes.draw do
  mount FeedbackGem::Engine => "/feedback_gem"
end
