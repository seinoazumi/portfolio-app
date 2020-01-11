class InquiryMailer < ApplicationMailer
  def send_mail(inquiry)
    @inquiry = inquiry
    mail(from: "system@no-reply.com",
         to: ENV['MAIL'],
         subject: "お問い合わせ通知")
  end
end
