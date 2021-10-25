class LawyerMailer < ApplicationMailer
  default from: 'help@example.com'

  def registered_successfully(lawyer)
    @lawyer = lawyer
    mail(to: lawyer.user.email, subject: 'Welcome aboard!')
  end
end
