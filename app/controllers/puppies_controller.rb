class PuppiesController < ApplicationController
  def index
    @message = Message.new
  end
end
