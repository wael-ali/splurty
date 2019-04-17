class CreateListitems < ActiveRecord::Migration[5.1]
  def change
    create_table :listitems do |t|
      t.references :subinfo, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
