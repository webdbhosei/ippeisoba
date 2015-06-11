class Solvability < ActiveRecord::Base
  # Benefit   : Event[this.dst_id]
  belongs_to :benefit,  class_name: "Event", foreign_key: "dst_id"
  # solution : Event[this.src_id]
  belongs_to :solution, class_name: "Event", foreign_key: "src_id"
end
