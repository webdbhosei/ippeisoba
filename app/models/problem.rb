class Problem < ActiveRecord::Base
  belongs_to :event
  has_many :problem_comments
end
