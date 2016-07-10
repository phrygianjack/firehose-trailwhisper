class NotificationMailer < ActionMailer::Base
  default from: "no-reply@trailwhisper.herokuapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email, 
         subject: "A comment has been posted to your Trail, #{@place.name}!")
  end
end
