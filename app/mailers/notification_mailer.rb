class NotificationMailer < ActionMailer::Base
  default from: "notifications@cityvoice.com"

  def confirmation_email(notification_subscription)
    @token = notification_subscription.auth_token
    @property = notification_subscription.property
    mail(to: notification_subscription.email, subject: 'Confirm to get notifications')
  end



end
