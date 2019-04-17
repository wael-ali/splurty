class CreateSubinfos < ActiveRecord::Migration[5.1]
  def change
    create_table :subinfos do |t|
      t.references :info, foreign_key: true
      t.string :title
      t.text :text
      t.string :imgurl
      t.string :img_position

      t.timestamps
    end
  end
end
