# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.datetime :event_date
      t.string :event_location
      t.text :event_text

      t.timestamps
    end
  end
end
