module FeedbackGem
  class Feedback < ApplicationRecord
  	validates :name,:email,:subject,:description,presence: true
  end
end
