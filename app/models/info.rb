class Info < ApplicationRecord
    has_many :subinfos, inverse_of: :info, autosave: true

    accepts_nested_attributes_for :subinfos, reject_if: lambda {|attributes| attributes[:title].blank? }, allow_destroy: true
end
