class MessagesController < ApplicationController
  def new
    m = Message.where(:phone_number => params[:From]).first     
    message = Message.create( content: params[:Body], phone_number: params[:From], location: params[:FromCity], flag: true)
    if m.nil?
      message.cartoon = Cartoon.find(:first,:offset=>rand(Cartoon.count)) 
      message.save  
    else
      message.cartoon  = m.cartoon
      message.save
    end
  end
  def voice
    text = Twilio::TwiML::Response.new do |r|
      r.Say 'Hello. Welcome to Z message! Please send message to 8 1 8 2 3 7 9 6 7 4.'
      r.Play'https://api.twilio.com/cowbell.mp3'
    end.text
   render text: text
  end
end
