class Simulator < ApplicationRecord
  validates :name, uniqueness: true
end
