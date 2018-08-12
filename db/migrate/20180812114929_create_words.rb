class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.entry :string
      t.equivalent :string
      t.sourc_language :string
      t.target_language :string
      t.state :string
      t.scope :string

      t.timestamps
    end
  end
end
