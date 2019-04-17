class Info < ApplicationRecord
    has_many :subinfos, inverse_of: :info, autosave: true

    accepts_nested_attributes_for :subinfos, reject_if: proc {|attributes| attribute[:name].blank? }, allow_destroy: true
end
