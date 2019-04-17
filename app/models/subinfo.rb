class Subinfo < ApplicationRecord
  belongs_to :info, inverse_of: :subinfos
  has_many :listitems
end
