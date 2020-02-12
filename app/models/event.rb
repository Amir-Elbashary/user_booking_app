# frozen_string_literal: true

class Event < ApplicationRecord

  has_many :appointments, dependent: :destroy
  belongs_to :product
end
