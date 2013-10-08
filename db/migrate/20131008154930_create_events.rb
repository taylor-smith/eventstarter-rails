class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user

      t.string :location
      t.datetime :event_time
      t.datetime :deadline
      t.integer :min_number
      t.integer :max_number
      t.string :event_name
      t.string :event_desc

      t.timestamps
    end
  end
end
