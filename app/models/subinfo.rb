class Subinfo < ApplicationRecord
  belongs_to :info
  has_many :listitems
end
