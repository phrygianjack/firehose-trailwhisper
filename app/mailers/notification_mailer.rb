class NotificationMailer < ActionMailer::Base
  default from: "no-reply@trailwhisper.herokuapp.com"

  def comment_added
    mail(to: "phrygian.jack@gmail.com", 
              subject: "A comment has been posted to your Trail!")
  end
end
