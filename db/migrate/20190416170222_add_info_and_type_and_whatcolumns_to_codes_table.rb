class AddInfoAndTypeAndWhatcolumnsToCodesTable < ActiveRecord::Migration[5.1]
  def change
    add_column :codes, :go_publish, :boolean, :default => false
    add_column :codes, :info, :text
    add_column :codes, :good, :boolean
    add_column :codes, :type, :string
  end
end
