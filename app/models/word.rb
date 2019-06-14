class Word < ApplicationRecord
    validate :name, presence: true
    validate :equivalent, presence: true
    validate :sourc_language, presence: true
    validate :target_language, presence: true

    before_save :downcase_fieldss

  def downcase_fields
    self.name.downcase
    self.equivalent.downcase
  end
end
