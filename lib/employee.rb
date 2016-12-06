class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate,
    presence: true,
    numericality: { only_integer: true },
    inclusion: { in: 40..200 }
end
