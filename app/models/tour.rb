class Tour < ActiveRecord::Base
  attr_accessible :activity_id, :available_from, :available_to, :description, :difficulty_level, :duration, :equipement_required, :max_capacity, :meeting_point, :min_capacity, :starting_time, :title, :user_id
  
  belongs_to :user
  belongs_to :activity
  
end
