class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user

      t.string :location
      t.datetime :time
      t.datetime :deadline
      t.integer :min_number
      t.integer :max_number
      t.string :name
      t.string :desc

      t.timestamps
    end
  end
end
