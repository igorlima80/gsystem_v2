class SupplierLegal < ApplicationRecord
  belongs_to :user, dependent: :destroy, optional: true
  belongs_to :address, dependent: :destroy, optional: true

  accepts_nested_attributes_for :user, allow_destroy: true
  accepts_nested_attributes_for :address, allow_destroy: true

  after_create :set_role

  def set_role
    self.user.remove_role :basic
    self.user.add_role :admin
  end
end
