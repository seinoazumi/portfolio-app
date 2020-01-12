class InquiriesController < ApplicationController
  def creare
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      flash[:success] = "お問い合わせを受け付けました"
      redirect_to root_path
    else
      render root_path
    end
  end

private
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end
end
