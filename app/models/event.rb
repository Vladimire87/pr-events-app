# frozen_string_literal: true

class Event < ApplicationRecord
  validates_presence_of :event_name, :event_date, :event_location, :event_text
  has_many :attendances
  has_many :users, through: :attendances
end
