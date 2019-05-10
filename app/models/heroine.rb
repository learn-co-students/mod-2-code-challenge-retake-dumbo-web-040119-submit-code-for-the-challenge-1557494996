class Heroine < ApplicationRecord
  belongs_to :power

validates_presence_of :name, :super_name
  validates :super_name, uniqueness: true
end
