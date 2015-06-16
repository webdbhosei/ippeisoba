class Causality < ActiveRecord::Base
  # Risk  : Event[this.dst_id]
  belongs_to :risk,     class_name: "Event", foreign_key: "dst_id"
  # Cause : Event[this.src_id]
  belongs_to :cause,    class_name: "Event", foreign_key: "src_id"
end
