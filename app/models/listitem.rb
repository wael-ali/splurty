class Listitem < ApplicationRecord
  belongs_to :subinfo, inverse_of: :listitems
end
