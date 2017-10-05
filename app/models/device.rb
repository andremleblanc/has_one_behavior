class Device < ApplicationRecord
  has_one :license, dependent: :destroy
end
