class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.references :event
      t.string :email

      t.timestamps
    end
  end
end
