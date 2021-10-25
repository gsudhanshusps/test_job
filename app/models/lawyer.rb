class Lawyer < ApplicationRecord
  belongs_to :user

  after_create :send_notification

  def full_name
    "#{user.first_name.capitalize} #{user.last_name.capitalize}"
  end

  def send_notification
    LawyerMailer.registered_successfully(self).deliver_later
  end
end
