class RenameTypeColumnInCodesTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :codes, :type, :example_for
  end
end
