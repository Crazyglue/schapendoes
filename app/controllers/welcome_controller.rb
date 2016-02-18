class WelcomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @message = Message.new
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(email: params[:email], name: params[:name], content: params[:message])
    if @message.save
      flash[:notice] = "Thanks for the message!"
      ContactMailer.contact_email(@message.name, @message.email, @message.content).deliver_now
      redirect_to '/'
    end
  end
end
