class Event < ActiveRecord::Base
  # Benefits  : [current event] ---solve--> [Related event]
  has_many :s2d_solvabilities, class_name: "Solvability", foreign_key: :src_id
  has_many :benefits,  through: :s2d_solvabilities

  # Solutions : [current event] <--solve--- [Related event]
  has_many :d2s_solvabilities, class_name: "Solvability", foreign_key: :dst_id
  has_many :solutions, through: :d2s_solvabilities

  # Risks     : [Current Event] ---cause--> [Related event]
  has_many :s2d_causalities,   class_name: "Causality",   foreign_key: :src_id
  has_many :risks,     through: :s2d_causalities

  # Causes    : [current event] <--cause--- [Related event]
  has_many :d2s_causalities,   class_name: "Causality",   foreign_key: :dst_id
  has_many :causes,    through: :d2s_causalities

  # Problem
  has_one :problem
end
