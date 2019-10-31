class CreateFeedbackGemFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_gem_feedbacks do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :description

      t.timestamps
    end
  end
end
