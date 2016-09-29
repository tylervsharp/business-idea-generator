class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.string :title, null: false
      t.datetime :date, null: false

      t.timestamps(null: false)
  end
end
