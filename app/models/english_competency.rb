class EnglishCompetency < ApplicationRecord
  validates_presence_of :overall_band
  belongs_to(
    :competenciable,
    polymorphic: true,
    optional: true
  )
  scope :active, -> { where('expiry >= ?', DateTime.now) }
  enum competency_type: {PTE: 0, IELTS: 1}
  default_scope -> { order(overall_band: :desc) }
end