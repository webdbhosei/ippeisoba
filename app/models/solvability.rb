class Solvability < ActiveRecord::Base
  # Benefit   : Event[this.dst_id]
  belongs_to :benefit,  class_name: "Event", foreign_key: "dst_id"
  # solution : Event[this.src_id]
  belongs_to :solution, class_name: "Event", foreign_key: "src_id"
  
  # pros/cons
  has_many :pros, class_name: "Solvability_pro"
  has_many :cons, class_name: "Solvability_con"
end
