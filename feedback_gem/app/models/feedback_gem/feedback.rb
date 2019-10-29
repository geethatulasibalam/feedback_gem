module FeedbackGem
  class Feedback < ApplicationRecord
  	validates :name,:email,:subject,:description,presence: true
  	def self.search(searchname)
			where('name LIKE ?',searchname)
		end
  end
end
