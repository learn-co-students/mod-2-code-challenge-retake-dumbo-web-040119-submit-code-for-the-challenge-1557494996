class Heroine < ApplicationRecord
    belongs_to :power
    validates_uniqueness_of :name, :super_name
end
