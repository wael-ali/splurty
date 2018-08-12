class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :name
      t.string :equivalent
      t.string :sourc_language
      t.string :target_language
      t.string :state
      t.string :scope

      t.timestamps
    end
  end
end
