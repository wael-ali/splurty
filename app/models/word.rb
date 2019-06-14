class Word < ApplicationRecord
    validates :name, presence: true
    validates :equivalent, presence: true
    validates :sourc_language, presence: true
    validates :target_language, presence: true

    before_save :downcase_fieldss

  def downcase_fields
    self.name.downcase
    self.equivalent.downcase
  end
end
