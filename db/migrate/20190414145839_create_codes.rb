class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.string :description
      t.text :code
      t.timestamps
    end
  end
end
