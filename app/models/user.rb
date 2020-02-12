# frozen_string_literal: true

class User < ApplicationRecord

  validates :email, uniqueness: { case_sensitive: false }

  has_many :bookings, dependent: :destroy
end
