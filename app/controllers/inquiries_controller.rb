class InquiriesController < ApplicationController
  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      flash[:success] = "お問い合わせを受け付けました"
      redirect_to root_path
      InquiryMailer.send_mail(@inquiry).deliver_now
    else
      flash[:danger] = "メッセージの送信に失敗しました"
      redirect_to root_path
    end
  end

private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end
end
