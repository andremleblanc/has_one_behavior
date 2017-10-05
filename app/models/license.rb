class License < ActiveRecord::Base
  # validate :field_is_empty
  validates :foo, inclusion: { in: %w[bar] }
  after_save :update_device
  belongs_to :device

  private

  def field_is_empty
    errors.add(:device, 'device already licensed') unless device.licensed_at.blank?
  end

  def update_device
    device.update(licensed_at: Time.now)
  end
end
