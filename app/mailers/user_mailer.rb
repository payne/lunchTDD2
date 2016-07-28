class UserMailer < ApplicationMailer
  def lunch_announcement(email)
    # This will soon take a group rather than an email.
    mail to: email, subject: '54Lunch.com Announcement'
  end
end
