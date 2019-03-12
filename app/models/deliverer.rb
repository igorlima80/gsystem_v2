class Deliverer < ApplicationRecord
  belongs_to :sex
  belongs_to :deliverer_status
  belongs_to :estabilishment
  belongs_to :type_deliverer
  has_one :vehicle
  belongs_to :user, dependent: :destroy, optional: true
  belongs_to :address, dependent: :destroy, optional: true

  accepts_nested_attributes_for :user, allow_destroy: true
  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :vehicle, allow_destroy: true

  after_create :set_role

  def set_role
    self.user.remove_role :basic
    self.user.add_role :admin
  end
end
