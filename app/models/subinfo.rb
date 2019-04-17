class Subinfo < ApplicationRecord
  belongs_to :info, inverse_of: :subinfos
  has_many :listitems, inverse_of: :subinfo, autosave: true


  accepts_nested_attributes_for :listitems, reject_if: lambda {|attributes| attributes[:content].blank? }, allow_destroy: true
end
