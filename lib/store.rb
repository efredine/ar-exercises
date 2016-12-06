class Store < ActiveRecord::Base
  has_many :employees

  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
    numericality: { only_integer: true, greater_than: 0 }
  validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
  validate :mens_or_womens_apparel

  before_destroy :ensure_destroyed_stores_have_no_employees

  private

  def mens_or_womens_apparel
    if womens_apparel == false && mens_apparel == false
      errors.add(:apparel, "At least one of mens_apparel or womens_apparel must be true.")
    end
  end

  def ensure_destroyed_stores_have_no_employees
    throw(:abort) unless self.employees.count == 0
  end

end
