class Info < ApplicationRecord
    has_many :subinfos

    accepts_nested_attributes_for :subinfos
end
