# frozen_string_literal: true

class Appointment < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :event
end
